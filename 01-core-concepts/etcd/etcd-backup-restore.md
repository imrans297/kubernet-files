# ETCD Backup and Restore

## ETCD Overview
ETCD is a distributed key-value store that stores all cluster data including:
- Cluster state
- Configuration data
- Metadata about nodes, pods, services, etc.

## Backup ETCD

### Method 1: Using etcdctl snapshot
```bash
# Set API version
export ETCDCTL_API=3

# Create snapshot
etcdctl snapshot save /tmp/etcd-backup.db \
  --endpoints=https://127.0.0.1:2379 \
  --cacert=/etc/kubernetes/pki/etcd/ca.crt \
  --cert=/etc/kubernetes/pki/etcd/server.crt \
  --key=/etc/kubernetes/pki/etcd/server.key

# Verify snapshot
etcdctl snapshot status /tmp/etcd-backup.db
```

### Method 2: From within etcd pod
```bash
kubectl exec etcd-master -n kube-system -- sh -c \
"ETCDCTL_API=3 etcdctl snapshot save /tmp/etcd-backup.db \
--endpoints=https://127.0.0.1:2379 \
--cacert=/etc/kubernetes/pki/etcd/ca.crt \
--cert=/etc/kubernetes/pki/etcd/server.crt \
--key=/etc/kubernetes/pki/etcd/server.key"
```

## Restore ETCD

### Step 1: Stop kube-apiserver
```bash
# Move kube-apiserver manifest
mv /etc/kubernetes/manifests/kube-apiserver.yaml /tmp/
```

### Step 2: Restore from snapshot
```bash
etcdctl snapshot restore /tmp/etcd-backup.db \
  --data-dir=/var/lib/etcd-restore \
  --endpoints=https://127.0.0.1:2379 \
  --cacert=/etc/kubernetes/pki/etcd/ca.crt \
  --cert=/etc/kubernetes/pki/etcd/server.crt \
  --key=/etc/kubernetes/pki/etcd/server.key
```

### Step 3: Update etcd configuration
```bash
# Edit etcd manifest
vi /etc/kubernetes/manifests/etcd.yaml

# Update data directory path
# Change: --data-dir=/var/lib/etcd
# To: --data-dir=/var/lib/etcd-restore
```

### Step 4: Restart kube-apiserver
```bash
# Move kube-apiserver manifest back
mv /tmp/kube-apiserver.yaml /etc/kubernetes/manifests/
```

## Important Notes
- Always backup before making changes
- ETCD backup includes all cluster state
- Restore process requires cluster downtime
- Test restore procedure in non-production environment

## Certificate Paths (Common Locations)
```bash
# Certificate files are typically located at:
--cacert /etc/kubernetes/pki/etcd/ca.crt
--cert /etc/kubernetes/pki/etcd/server.crt
--key /etc/kubernetes/pki/etcd/server.key

# Or for external etcd:
--cacert /etc/etcd/ca.crt
--cert /etc/etcd/server.crt
--key /etc/etcd/server.key
```