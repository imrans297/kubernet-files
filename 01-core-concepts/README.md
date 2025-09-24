# Core Concepts

This section covers the fundamental Kubernetes concepts that form the foundation of the platform.

## Topics Covered

### Control Plane Components
- **ETCD**: Distributed key-value store for cluster data
- **API Server**: Central management entity and communication hub
- **Controller Manager**: Runs controller processes
- **Scheduler**: Assigns pods to nodes

### Node Components
- **Kubelet**: Node agent that manages pods
- **Kube Proxy**: Network proxy for services

### Workload Resources
- **Pods**: Smallest deployable units
- **ReplicaSets**: Ensures desired number of pod replicas
- **Deployments**: Manages ReplicaSets and provides declarative updates

### Organization
- **Namespaces**: Virtual clusters for resource isolation
- **Services**: Stable network endpoints for pods

## Key Commands

```bash
# Pod operations
kubectl get pods
kubectl describe pod <pod-name>
kubectl logs <pod-name>

# Deployment operations
kubectl create deployment <name> --image=<image>
kubectl scale deployment <name> --replicas=3

# Service operations
kubectl expose deployment <name> --port=80 --target-port=8080
kubectl get services
```

## Practice Labs

Each subdirectory contains:
- Concept notes
- YAML manifests
- Practice exercises
- Common troubleshooting scenarios