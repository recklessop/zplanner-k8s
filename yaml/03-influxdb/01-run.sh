# Apply the configuration to the default namespace
kubectl apply -f deployment.yaml --namespace=default

# Apply the configuration to the default namespace
kubectl apply -f influxdb-config.yaml --namespace=default

# Apply the configuration to the default namespace
kubectl apply -f setup-script.yaml --namespace=default

# Apply the configuration to the default namespace
kubectl apply -f setup-job.yaml --namespace=default

# create a secret with cluster access info to allow auto config
kubectl create secret generic kube-config --from-file=$HOME/.kube/config
