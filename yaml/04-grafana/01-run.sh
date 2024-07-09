# Apply the configuration to the default namespace
kubectl apply -f grafana-secret.yaml --namespace=default

# Apply the config maps to the default namespace
kubectl apply -f configmaps.yaml --namespace=default

kubectl apply -f provisioning-config-map.yaml

# Apply the configuration to the default namespace
kubectl apply -f deployment.yaml --namespace=default
