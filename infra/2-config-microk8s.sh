microk8s enable ingress
microk8s enable hostpath-storage
microk8s enable community
microk8s enable keda

sudo snap alias microk8s.helm helm
sudo snap alias microk8s.helm3 helm3
sudo snap alias microk8s.kubectl kubectl