# NFS

```
# Install NFS Server
curl -o base/nfs-server.yaml https://raw.githubusercontent.com/kubernetes-csi/csi-driver-nfs/master/deploy/example/nfs-provisioner/nfs-server.yaml

# NFS-CSI Driver
curl -o overlays/production/csi-nfs-driverinfo.yaml https://raw.githubusercontent.com/kubernetes-csi/csi-driver-nfs/v4.1.0/deploy/v4.1.0/csi-nfs-driverinfo.yaml
curl -o overlays/production/csi-nfs-controller.yaml https://raw.githubusercontent.com/kubernetes-csi/csi-driver-nfs/v4.1.0/deploy/v4.1.0/csi-nfs-controller.yaml
curl -o overlays/production/csi-nfs-node.yaml https://raw.githubusercontent.com/kubernetes-csi/csi-driver-nfs/v4.1.0/deploy/v4.1.0/csi-nfs-node.yaml
curl -o overlays/production/rbac-csi-nfs.yaml https://raw.githubusercontent.com/kubernetes-csi/csi-driver-nfs/v4.1.0/deploy/v4.1.0/rbac-csi-nfs.yaml

# create StorageClass
curl -o base/storageclass-nfs.yaml https://raw.githubusercontent.com/kubernetes-csi/csi-driver-nfs/master/deploy/example/storageclass-nfs.yaml
```

- test

https://raw.githubusercontent.com/kubernetes-csi/csi-driver-nfs/master/deploy/example/pvc-nfs-csi-dynamic.yaml

```
---
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: pvc-nfs-dynamic
spec:
  accessModes:
    - ReadWriteMany
  resources:
    requests:
      storage: 1Gi
  storageClassName: nfs-csi
```
