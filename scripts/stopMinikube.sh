#!/bin/bash
kubectl delete -f kubernetes.yaml
kubectl delete configmap sys-app-root
kubectl delete secret sys-app-credentials

eval "$(minikube docker-env -u)"
minikube stop
minikube delete
