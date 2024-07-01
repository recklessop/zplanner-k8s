kubectl delete secret generic kube-config 

# delete the configuration to the default namespace
kubectl delete -f deployment.yaml --namespace=default

# delete the configuration to the default namespace
kubectl delete -f influxdb-config.yaml --namespace=default

# delete the configuration to the default namespace
kubectl delete -f setup-script.yaml --namespace=default

# delete the configuration to the default namespace
kubectl delete -f setup-job.yaml --namespace=default