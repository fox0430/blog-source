---
title: "Completely uninstall Istio"
date: 2021-02-13T17:41:27+09:00
draft: false
---

If you want to uninstall istio on your Kubernetes cluster,
Delete ```istio-system``` namespace is not enough to uninstall istio.
Need to delete CRDs too.

Can be completely uninstall follow this command. If you installed using istioctl and default profile.
```
istioctl x uninstall --purge
kubectl delete ns istio-system
```

or

```
istioctl manifest generate --set profile=default | kubectl delete -f -
kubectl delete ns istio-system
```

## Refarences
https://istio.io/latest/docs/setup/getting-started/#uninstall

https://stackoverflow.com/questions/54261468/uninstall-istio-all-components-completely-from-kubernetes-cluster
