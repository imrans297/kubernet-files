# CKA Exam Tips & Strategy

## Exam Format
- **Duration**: 2 hours
- **Questions**: 15-20 performance-based tasks
- **Passing Score**: 66%
- **Environment**: Command line interface to working Kubernetes clusters

## Time Management
- Spend max 6-8 minutes per question
- Skip difficult questions and return later
- Use bookmarks for questions to revisit
- Leave 15 minutes at the end for review

## Essential Skills
1. **kubectl proficiency** - Must be very fast with kubectl
2. **YAML writing** - Create manifests from scratch quickly
3. **Troubleshooting** - Systematic approach to debugging
4. **Documentation navigation** - Quickly find examples in k8s docs

## Allowed Resources
- kubernetes.io/docs
- kubernetes.io/blog
- github.com/kubernetes

## Common Question Types
1. **Create resources** (pods, deployments, services)
2. **Troubleshoot failures** (pods not starting, networking issues)
3. **Configure RBAC** (roles, bindings)
4. **Backup/Restore ETCD**
5. **Upgrade clusters**
6. **Network policies**
7. **Storage configuration**

## Quick Reference Commands
```bash
# Set context and namespace quickly
kubectl config use-context <context-name>
kubectl config set-context --current --namespace=<namespace>

# Generate YAML quickly
kubectl run pod-name --image=nginx --dry-run=client -o yaml > pod.yaml

# Quick pod creation with labels
kubectl run nginx --image=nginx --labels="app=web,env=prod"

# Force delete stuck resources
kubectl delete pod <pod-name> --force --grace-period=0
```

## Exam Day Strategy
1. **Read all questions first** - Get overview of tasks
2. **Start with easy questions** - Build confidence and save time
3. **Use imperative commands** when possible - Faster than writing YAML
4. **Verify your work** - Always check if resources are working
5. **Clean up** - Delete test resources to avoid confusion

## Common Mistakes to Avoid
- Not reading the question completely
- Working in wrong namespace/context
- Forgetting to apply manifests after editing
- Not verifying the solution works
- Spending too much time on one question