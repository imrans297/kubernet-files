#!/bin/bash
# Kubectl aliases for CKA exam efficiency

# Basic aliases
alias k='kubectl'
alias kgp='kubectl get pods'
alias kgs='kubectl get services'
alias kgd='kubectl get deployments'
alias kgn='kubectl get nodes'
alias kgns='kubectl get namespaces'

# Describe aliases
alias kdp='kubectl describe pod'
alias kds='kubectl describe service'
alias kdd='kubectl describe deployment'
alias kdn='kubectl describe node'

# Create aliases
alias kcp='kubectl create pod'
alias kcd='kubectl create deployment'
alias kcs='kubectl create service'

# Apply and delete
alias ka='kubectl apply -f'
alias kd='kubectl delete'
alias kdf='kubectl delete -f'

# Logs and exec
alias kl='kubectl logs'
alias ke='kubectl exec -it'

# Edit resources
alias ked='kubectl edit'

# Port forwarding
alias kpf='kubectl port-forward'

# Scale
alias ksc='kubectl scale'

# Rollout
alias kro='kubectl rollout'

# Get with output formats
alias kgy='kubectl get -o yaml'
alias kgj='kubectl get -o json'
alias kgw='kubectl get -o wide'

# Useful functions
function kns() {
    kubectl config set-context --current --namespace=$1
}

function kctx() {
    kubectl config use-context $1
}

# Export for non-interactive shells
export -f kns kctx

echo "Kubectl aliases loaded! Use 'k' instead of 'kubectl'"
echo "Example: kgp = kubectl get pods"