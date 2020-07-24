#!/bin/bash

printf "Metrics Server \n"
kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/download/v0.3.6/components.yaml
printf "Verifying \n"
kubectl get deployment metrics-server -n kube-system

printf "Dashboard Deploy \n"
kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.0.0-beta8/aio/deploy/recommended.yaml

printf "Apply the clusterrole service account \n"
kubectl apply -f eks-admin-service-account.yaml

printf "Token for proxied kube dash login \n"
kubectl -n kube-system describe secret $(kubectl -n kube-system get secret | grep eks-admin | awk '{print $1}')

printf "Run proxy to redirect pod to desktop \n\n"
kubectl proxy &

printf "Visit: http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/#/overview"


