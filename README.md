## Alpine FIO Container for running parallel FIO Pods in Kubernetes for testing of persistant volumes.

The docker image with the latest Alpine image and fio can be created with the Dockerfile.

#### The Kubernetes deployment has two different approaches: 

1) a deployment and PVC for RWX volumes
2) a statefulset for RWO/RWX

**Deployment and PersistentVolumeClaim:** The deployment makes scaling simple, with all pods connecting to the same dynamically PV and using a different output path to avoid collisions. This approach requires a single RWX volume, testing performance on a single shared filesystem.

**Statefulset and VolumeClaimTemplates:** Each replica Pod creates it's own volume, making this approach suitable for RWO volumes as well as RWX. 
