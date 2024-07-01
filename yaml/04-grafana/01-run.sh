# Apply the configuration to the default namespace
kubectl apply -f grafana-secret.yaml --namespace=default

# Apply the configuration to the default namespace
kubectl apply -f configmaps.yaml --namespace=default

# Apply the configuration to the default namespace
kubectl apply -f deployment.yaml --namespace=default
