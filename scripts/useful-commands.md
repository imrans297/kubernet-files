# Useful Kubernetes Commands for CKA

## Essential kubectl Commands

### Pod Operations
```bash
# Create a pod
kubectl run nginx --image=nginx

# Get pods
kubectl get pods
kubectl get pods -o wide
kubectl get pods --all-namespaces

# Describe pod
kubectl describe pod <pod-name>

# Get pod logs
kubectl logs <pod-name>
kubectl logs <pod-name> -f  # follow logs

# Execute commands in pod
kubectl exec -it <pod-name> -- /bin/bash
```

### Deployment Operations
```bash
# Create deployment
kubectl create deployment nginx --image=nginx

# Scale deployment
kubectl scale deployment nginx --replicas=3

# Update deployment
kubectl set image deployment/nginx nginx=nginx:1.16

# Rollout status
kubectl rollout status deployment/nginx

# Rollback deployment
kubectl rollout undo deployment/nginx
```

### Service Operations
```bash
# Expose deployment
kubectl expose deployment nginx --port=80 --target-port=80

# Create service
kubectl create service clusterip nginx --tcp=80:80
```

### Namespace Operations
```bash
# Create namespace
kubectl create namespace dev

# Set default namespace
kubectl config set-context --current --namespace=dev

# Get resources in namespace
kubectl get pods -n kube-system
```

### Troubleshooting Commands
```bash
# Check cluster info
kubectl cluster-info

# Check node status
kubectl get nodes
kubectl describe node <node-name>

# Check events
kubectl get events --sort-by=.metadata.creationTimestamp

# Check resource usage
kubectl top nodes
kubectl top pods
```

### YAML Generation
```bash
# Generate pod YAML
kubectl run nginx --image=nginx --dry-run=client -o yaml > pod.yaml

# Generate deployment YAML
kubectl create deployment nginx --image=nginx --dry-run=client -o yaml > deployment.yaml

# Generate service YAML
kubectl expose deployment nginx --port=80 --dry-run=client -o yaml > service.yaml
```