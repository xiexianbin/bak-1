kubectl apply -n argo -f ../common/default-tls.yaml
kubectl apply -n argocd -f ../common/x-root-ca-secret.yaml
kustomize build ../argo-cd/overlays/production/ | kubectl apply -f -
