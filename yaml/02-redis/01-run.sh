# Apply the configuration to the default namespace
kubectl apply -f config-map.yaml --namespace=default

# Apply the configuration to the default namespace
kubectl apply -f deployment.yaml --namespace=default

# Apply the configuration to the default namespace
kubectl apply -f service.yaml --namespace=default