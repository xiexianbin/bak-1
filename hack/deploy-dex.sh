kubectl apply -n dex -f ../common/default-tls.yaml
kustomize build ../dex/overlays/production/ | kubectl apply -f -
