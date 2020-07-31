---
title: "Panic in istio-init on Centos8 Based kubernetes cluster"
date: 2020-07-31T17:05:20+09:00
draft: false
---

# Background

Recently, I migration operating system for kubenetes cluster from ubuntu 20.04 to centos 8.

Setup kubernetes cluster on CentOS 8 and deploy istio. OK, deploy istio is a success.
But sidecar injection has a problem. panic occurred on istio-init container.

## Error log

```
Environment:
------------
ENVOY_PORT=
INBOUND_CAPTURE_PORT=
ISTIO_INBOUND_INTERCEPTION_MODE=
ISTIO_INBOUND_TPROXY_MARK=
ISTIO_INBOUND_TPROXY_ROUTE_TABLE=
ISTIO_INBOUND_PORTS=
ISTIO_LOCAL_EXCLUDE_PORTS=
ISTIO_SERVICE_CIDR=
ISTIO_SERVICE_EXCLUDE_CIDR=

Variables:
----------
PROXY_PORT=15001
PROXY_INBOUND_CAPTURE_PORT=15006
PROXY_UID=1337
PROXY_GID=1337
INBOUND_INTERCEPTION_MODE=REDIRECT
INBOUND_TPROXY_MARK=1337
INBOUND_TPROXY_ROUTE_TABLE=133
INBOUND_PORTS_INCLUDE=*
INBOUND_PORTS_EXCLUDE=15090,15021,15020
OUTBOUND_IP_RANGES_INCLUDE=*
OUTBOUND_IP_RANGES_EXCLUDE=
OUTBOUND_PORTS_EXCLUDE=
KUBEVIRT_INTERFACES=
ENABLE_INBOUND_IPV6=false

Writing following contents to rules file:  /tmp/iptables-rules-1596187200181852254.txt482512122
* nat
-N ISTIO_REDIRECT
-N ISTIO_IN_REDIRECT
-N ISTIO_INBOUND
-N ISTIO_OUTPUT
-A ISTIO_REDIRECT -p tcp -j REDIRECT --to-ports 15001
-A ISTIO_IN_REDIRECT -p tcp -j REDIRECT --to-ports 15006
-A PREROUTING -p tcp -j ISTIO_INBOUND
-A ISTIO_INBOUND -p tcp --dport 22 -j RETURN
-A ISTIO_INBOUND -p tcp --dport 15090 -j RETURN
-A ISTIO_INBOUND -p tcp --dport 15021 -j RETURN
-A ISTIO_INBOUND -p tcp --dport 15020 -j RETURN
-A ISTIO_INBOUND -p tcp -j ISTIO_IN_REDIRECT
-A OUTPUT -p tcp -j ISTIO_OUTPUT
-A ISTIO_OUTPUT -o lo -s 127.0.0.6/32 -j RETURN
-A ISTIO_OUTPUT -o lo ! -d 127.0.0.1/32 -m owner --uid-owner 1337 -j ISTIO_IN_REDIRECT
-A ISTIO_OUTPUT -o lo -m owner ! --uid-owner 1337 -j RETURN
-A ISTIO_OUTPUT -m owner --uid-owner 1337 -j RETURN
-A ISTIO_OUTPUT -o lo ! -d 127.0.0.1/32 -m owner --gid-owner 1337 -j ISTIO_IN_REDIRECT
-A ISTIO_OUTPUT -o lo -m owner ! --gid-owner 1337 -j RETURN
-A ISTIO_OUTPUT -m owner --gid-owner 1337 -j RETURN
-A ISTIO_OUTPUT -d 127.0.0.1/32 -j RETURN
-A ISTIO_OUTPUT -j ISTIO_REDIRECT
COMMIT

iptables-restore --noflush /tmp/iptables-rules-1596187200181852254.txt482512122
iptables-restore v1.6.1: iptables-restore: unable to initialize table 'nat'

Error occurred at line: 1
Try `iptables-restore -h' or 'iptables-restore --help' for more information.
iptables-save
panic: exit status 2

goroutine 1 [running]:
istio.io/istio/tools/istio-iptables/pkg/dependencies.(*RealDependencies).RunOrFail(0x3baeea8, 0x22cee33, 0x10, 0xc00029ca60, 0x2, 0x2)
	istio.io/istio/tools/istio-iptables/pkg/dependencies/implementation.go:44 +0x96
istio.io/istio/tools/istio-iptables/pkg/cmd.(*IptablesConfigurator).executeIptablesRestoreCommand(0xc0007dfd68, 0x22c4b01, 0x0, 0x0)
	istio.io/istio/tools/istio-iptables/pkg/cmd/run.go:493 +0x387
istio.io/istio/tools/istio-iptables/pkg/cmd.(*IptablesConfigurator).executeCommands(0xc0007dfd68)
	istio.io/istio/tools/istio-iptables/pkg/cmd/run.go:500 +0x45
istio.io/istio/tools/istio-iptables/pkg/cmd.(*IptablesConfigurator).run(0xc0007dfd68)
	istio.io/istio/tools/istio-iptables/pkg/cmd/run.go:447 +0x2625
istio.io/istio/tools/istio-iptables/pkg/cmd.glob..func1(0x3b5c4a0, 0xc0006ed000, 0x0, 0x10)
	istio.io/istio/tools/istio-iptables/pkg/cmd/root.go:64 +0x148
github.com/spf13/cobra.(*Command).execute(0x3b5c4a0, 0xc0006ecf00, 0x10, 0x10, 0x3b5c4a0, 0xc0006ecf00)
	github.com/spf13/cobra@v1.0.0/command.go:846 +0x29d
github.com/spf13/cobra.(*Command).ExecuteC(0x3b5c740, 0x0, 0x0, 0x0)
	github.com/spf13/cobra@v1.0.0/command.go:950 +0x349
github.com/spf13/cobra.(*Command).Execute(...)
	github.com/spf13/cobra@v1.0.0/command.go:887
main.main()
	istio.io/istio/pilot/cmd/pilot-agent/main.go:504 +0x2d
```

# Solution

It appears that the need to enable CNI plugin on some of the CentOS environments.
Retry deploy sidecar pods after following this command.

```
istioctl manifest apply --set components.cni.enabled=true 
```

# Reference
https://github.com/istio/istio/issues/23009
https://istio.io/latest/docs/setup/additional-setup/cni/
