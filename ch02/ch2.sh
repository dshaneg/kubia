#! /bin/bash

# 2.3.1 Deploying your Node.js app (creates a replicationcontroller)
kubectl run kubia --image=dshaneg/kubia --port=8080 --generator=run/v1

# 2.3.2 Accessing your web application (Creating a service object)
kubectl expose rc kubia --type=LoadBalancer --name kubia-http

# 2.3.4 Horizontally scaling the application
kubectl scale rc kubia --replicas=3
