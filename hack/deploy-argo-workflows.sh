kubectl apply -n argo -f ../common/default-tls.yaml
kubectl apply -n argo -f ../common/x-root-ca-secret.yaml
kustomize build ../argo-workflows/overlays/production/ | kubectl apply -f -
