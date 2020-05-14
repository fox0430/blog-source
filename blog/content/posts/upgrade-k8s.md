---
title: "Failed upgrade k8s by kubespray"
date: 2020-05-14T19:10:19+09:00
draft: false
---

I tried to upgrade v1.16.8 to v1.17.5 on the on-premise kubernetes cluster by kubespray. but, failed upgrade...

## Environment

 - 1 master node
 - 8 worker node
 - Upgrade k8s v1.16.8 to v1.17.5
 - All node are Ubuntu 18.04.4 LTS
 - kubespray v2.13.0

## Log

It seemed to fail it here.
Master node success but, worker node failed...

```
TASK [kubernetes/node : install | Copy kubeadm binary from download dir] ****************************************************************************************************************
task path: /root/kubespray/roles/kubernetes/node/tasks/install.yml:2
The full traceback is:
WARNING: The below traceback may *not* be related to the actual failure.
File "/tmp/ansible_synchronize_payload_vSZyEg/ansible_synchronize_payload.zip/ansible/module_utils/basic.py", line 2592, in run_command
cmd = subprocess.Popen(args, **kwargs)
File "/usr/lib/python2.7/subprocess.py", line 394, in __init__
errread, errwrite)
File "/usr/lib/python2.7/subprocess.py", line 1047, in _execute_child
raise child_exception
fatal: [k8s-worker1 -> 192.168.1.101]: FAILED! => {
"changed": false,
"cmd": "sshpass",
"invocation": {
"module_args": {
"_local_rsync_password": "VALUE_SPECIFIED_IN_NO_LOG_PARAMETER",
"_local_rsync_path": "rsync",
"_substitute_controller": false,
"archive": true,
"checksum": false,
"compress": false,
"copy_links": false,
"delete": false,
"dest": "/usr/local/bin/kubeadm",
"dest_port": 22,
"dirs": false,
"existing_only": false,
"group": false,
"link_dest": null,
"links": null,
"mode": "push",
"owner": false,
"partial": false,
"perms": true,
"private_key": null,
"recursive": null,
"rsync_opts": [],
"rsync_path": null,
"rsync_timeout": 0,
"set_remote_user": true,
"src": "/tmp/releases/kubeadm-v1.17.5-amd64",
"ssh_args": null,
"times": null,
"verify_host": false
}
},
"msg": "[Errno 2] No such file or directory",
"rc": 2
}

```

## Solution

Edit roles/kubernetes/node/tasks/install.yml

```
- name: install | Copy kubeadm binary from download dir
#  synchronize:
  copy:
    remote_src: true
    src: "{{ local_release_dir }}/kubeadm-{{ kubeadm_version }}-{{ image_arch }}"
    dest: "{{ bin_dir }}/kubeadm"
    # compress: no
    # perms: yes
    # owner: no
    # group: no
  delegate_to: "{{ inventory_hostname }}"
  tags:
    - kubeadm
  when:
    - not inventory_hostname in groups['kube-master']
```

```
- name: install | Copy kubelet binary from download dir
#  synchronize:
  copy:
    remote_src: true
    src: "{{ local_release_dir }}/kubelet-{{ kube_version }}-{{ image_arch }}"
    dest: "{{ bin_dir }}/kubelet"
    # compress: no
    # perms: yes
    # owner: no
    # group: no
   delegate_to: "{{ inventory_hostname }}"
   tags:
     - kubelet
```

Edit the two tasks as above and retry ansible-playbook command.

## Reference

https://github.com/kubernetes-sigs/kubespray/issues/5675
