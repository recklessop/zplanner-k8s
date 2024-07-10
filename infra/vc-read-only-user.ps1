# Variables
$vcenterServer = "192.168.50.50"
$vcenterUsername = "administrator@vsphere.local"
$vcenterPassword = "Zertodata987!"
$newUsername = "zplannersvc"
$newUserPassword = "zplannersvc1234"
$roleName = "Read-only"
$newUserDomain = "vsphere.local"  # or your appropriate SSO domain

# Set PowerCLI configuration to ignore invalid SSL certificates
Set-PowerCLIConfiguration -InvalidCertificateAction Ignore -Confirm:$false

# Connect to vCenter
Connect-VIServer -Server $vcenterServer -User $vcenterUsername -Password $vcenterPassword

# Get SSO Admin view
$si = Get-View ServiceInstance
$ssoAdmin = Get-View $si.Content.SessionManager

# Create new SSO user
$authMgr = Get-View $si.Content.AuthorizationManager
$authMgr.CreateUser($newUserDomain, $newUsername, $newUserPassword, "Read-only user account")

# Ensure the Read-only role exists
$role = Get-VIRole -Name $roleName -ErrorAction SilentlyContinue
if (-not $role) {
    Write-Host "Creating Read-only role..."
    $privileges = "System.View"
    $role = New-VIRole -Name $roleName -Privilege $privileges
}

# Assign Read-only role to the new user
$entity = Get-Folder -NoRecursion
New-VIPermission -Entity $entity -Principal "$newUsername@$newUserDomain" -Role $role

# Disconnect from vCenter
Disconnect-VIServer -Server $vcenterServer -Confirm:$false

# Reset PowerCLI configuration to default (Optional)
Set-PowerCLIConfiguration -InvalidCertificateAction Prompt -Confirm:$false
