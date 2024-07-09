# Apply the configuration to the default namespace
kubectl apply -f deployment.yaml --namespace=default

# Apply the configuration to the default namespace
kubectl apply -f keda-scaler.yaml --namespace=default