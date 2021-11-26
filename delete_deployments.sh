echo "Cleaning cluster"
kubectl delete --ignore-not-found=true -f secrets.yaml
kubectl delete --ignore-not-found=true -f account-database.yaml
kubectl delete --ignore-not-found=true -f account-summary.yaml
kubectl delete --ignore-not-found=true -f compute-interest-api.yaml
kubectl delete --ignore-not-found=true -f transaction-generator.yaml
kuber=$(kubectl get pods -l app=office-space)
while [ ${#kuber} -ne 0 ]
do
    sleep 5s
    kubectl get pods -l app=office-space
    kuber=$(kubectl get pods -l app=offce-space)
done
echo "Cleaning done"
