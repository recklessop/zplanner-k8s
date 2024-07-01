# delete the configuration to the default namespace
kubectl delete -f deployment.yaml --namespace=default

# delete the configuration to the default namespace
kubectl delete -f configmaps.yaml --namespace=default

# delete the configuration to the default namespace
kubectl delete -f grafana-secret.yaml --namespace=default