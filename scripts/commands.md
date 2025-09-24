Pod

kubectl get po
kubectl describe po pod_name
kubectl get po -o 
kubetcl delete po pod_name

Create a new Pod 
in 2 way
1st by yaml
2nd by command:
kubectl run redis --image=redis --dry-run=client -o yaml

kubectl run redis --image=redis --dry-run=client -o yaml > redis.yaml

to change the image of the Pod which is running
kubectl edit pod (pod_name)
kubetl set  image pod/(pod_name) container_name/imageto be changes


RepplicaSet