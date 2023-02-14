#!/usr/bin/env bash
# kubectl port-forward svc/argocd-server -n argocd 8080:443
# argocd login localhost:8080
# argocd app list
argocd app create demo-spring-be --repo https://github.com/omocquais-p/argocd-demo --path . --dest-server https://kubernetes.default.svc --dest-namespace default
# argocd app get demo-spring-be
# Change the YAML (replicaset)
# argocd app sync demo-spring-be