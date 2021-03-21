---
title: "Can not delete a openEBS PVC"
date: 2021-03-21T22:44:53+09:00
draft: false
---

### Environment

- Debian 10 buster
- Kubernete v1.19.7
- openEBS v2.7.0

### Background

I try to delete PVC created by openEBS. But, I can not delete it.

```
kubectl get pvc

NAME       STATUS   VOLUME                                     CAPACITY   ACCESS MODES   STORAGECLASS           AGE
test-pvc   Bound    pvc-8d8b06d7-d5ee-4166-8b33-242f360072e0   100Mi      RWO            openebs-jiva-default   5m13s
```

```
kubectl delete pvc test-pvc

Error from server: error when deleting "deployment.yaml": admission webhook "admission-webhook.openebs.io" denied the request: snapshots verification failed failed to list snapshot      s related to volume: pvc-8d8b06d7-d5ee-4166-8b33-242f360072e0: volumesnapshots.volumesnapshot.external-storage.k8s.io is forbidden: User "system:serviceaccount:openebs:openebs-maya-operator"       cannot list resource "volumesnapshots" in API group "volumesnapshot.external-storage.k8s.io" in the namespace "test"
```

## Solution

Restart ```openebs-localpv-provisioner``` pod.

```
kubectl get po -n openebs | grep localpv-provisioner

openebs-localpv-provisioner-548c7dfbf7-krx8l                      1/1     Running            0          4d3h

kubectl delete pvc openebs-localpv-provisioner-548c7dfbf7-krx8l -n openebs 
```

When restarted ```openebs-localpv-provisioner```, Please retry to delete PVC.
