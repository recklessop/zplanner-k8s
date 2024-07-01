# Apply the configuration to the default namespace
kubectl apply -f vcenter.yaml --namespace=default

echo "Configuration applied to the default namespace"