#! /bin/bash

# 3.2.3 Using kubectl create to creat the pod
kubectl create -f ch03/kubia-manual.yaml

# 3.2.5 Sending requests to the pod
kubectl port-forward kubia-manual 8888:8080
# then in another shell
curl localhost:8888

# 3.3.2 Specifying labels when creating a pod
kubectl create -f ch03/kubia-manual-with-labels.yaml
kubectl get pods --show-labels
kubectl get pods -L creation_method,env

# 3.7.3 Creating a namespace
kubectl create -f ch03/custom-namespace.yaml
# or preferable
kubectl create namespace custom-namespace



