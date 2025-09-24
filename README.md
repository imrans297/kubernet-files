# Certified Kubernetes Administrator (CKA) - KodeCloud Course

This repository contains my study materials, notes, and practice exercises for the Certified Kubernetes Administrator (CKA) exam, following Mumshad Mannambeth's KodeCloud course.

## 📚 Course Structure

The repository is organized according to the CKA exam domains:

### 1. Core Concepts (25%)
- **ETCD** - Distributed key-value store
- **API Server** - Kubernetes API gateway
- **Controller Manager** - Control loops
- **Scheduler** - Pod scheduling
- **Kubelet** - Node agent
- **Kube Proxy** - Network proxy
- **Pods** - Smallest deployable units
- **ReplicaSets** - Pod replication
- **Deployments** - Application deployment
- **Namespaces** - Resource isolation
- **Services** - Service discovery

### 2. Workloads & Scheduling (15%)
- **Manual Scheduling** - Direct pod placement
- **Labels & Selectors** - Resource organization
- **Taints & Tolerations** - Node restrictions
- **Node Affinity** - Pod-to-node assignment
- **Resource Limits** - CPU/Memory constraints
- **DaemonSets** - Node-wide deployments
- **Static Pods** - Kubelet-managed pods
- **Multiple Schedulers** - Custom scheduling

### 3. Services & Networking (20%)
- **Services** - ClusterIP, NodePort, LoadBalancer
- **Ingress** - HTTP/HTTPS routing
- **Network Policies** - Traffic control
- **DNS** - Service discovery

### 4. Storage (10%)
- **Volumes** - Data persistence
- **Persistent Volumes** - Cluster storage
- **Storage Classes** - Dynamic provisioning

### 5. Troubleshooting (30%)
- **Application Failure** - Pod/container issues
- **Control Plane Failure** - Master node problems
- **Worker Node Failure** - Node connectivity
- **Network Troubleshooting** - Connectivity issues

### 6. Cluster Architecture, Installation & Configuration
- **RBAC** - Role-based access control
- **Kubeconfig** - Cluster access configuration
- **API Groups** - Resource organization
- **Authorization** - Access control

### 7. Security
- **TLS Certificates** - Cluster security
- **Image Security** - Container image scanning
- **Security Contexts** - Pod security
- **Network Policies** - Network security

### 8. Cluster Maintenance
- **Cluster Upgrade** - Version management
- **Backup & Restore** - Data protection
- **Node Maintenance** - Node lifecycle

## 📁 Directory Structure

```
KodeCloud_CKA/
├── 01-core-concepts/          # Core Kubernetes concepts
├── 02-workloads-scheduling/   # Scheduling and workload management
├── 03-services-networking/    # Services and networking
├── 04-storage/               # Storage concepts
├── 05-troubleshooting/       # Troubleshooting scenarios
├── 06-cluster-architecture/  # Cluster setup and architecture
├── 07-security/             # Security concepts
├── 08-cluster-maintenance/   # Maintenance procedures
├── docs/                    # Course PDFs and documentation
├── labs/                    # Practice labs and exercises
├── scripts/                 # Useful scripts and commands
├── resources/              # Additional resources and references
└── README.md               # This file
```

## 🚀 Getting Started

1. **Prerequisites**
   - Basic understanding of containers and Docker
   - Linux command line familiarity
   - Basic networking concepts

2. **Study Approach**
   - Follow the numbered directories in sequence
   - Practice with hands-on labs
   - Use the provided YAML manifests
   - Review troubleshooting scenarios

3. **Exam Preparation**
   - Complete all labs in the `labs/` directory
   - Practice troubleshooting scenarios
   - Time yourself on practice exercises
   - Review the official CKA curriculum

## 📖 Resources

- [Official CKA Exam Guide](https://www.cncf.io/certification/cka/)
- [Kubernetes Documentation](https://kubernetes.io/docs/)
- [KodeCloud CKA Course](https://kodekloud.com/courses/certified-kubernetes-administrator-cka/)

## 🎯 Exam Tips

- **Time Management**: 2 hours for 15-20 questions
- **Kubectl Proficiency**: Master kubectl commands and shortcuts
- **YAML Manifests**: Practice writing YAML from scratch
- **Troubleshooting**: Focus on systematic debugging approach
- **Documentation**: Know how to quickly find information in k8s docs

## 📝 Progress Tracking

- [ ] Core Concepts
- [ ] Workloads & Scheduling
- [ ] Services & Networking
- [ ] Storage
- [ ] Troubleshooting
- [ ] Cluster Architecture
- [ ] Security
- [ ] Cluster Maintenance

## 🤝 Contributing

This is a personal study repository, but feel free to:
- Suggest improvements
- Report errors
- Share additional resources

---

**Good luck with your CKA certification journey! 🎉**