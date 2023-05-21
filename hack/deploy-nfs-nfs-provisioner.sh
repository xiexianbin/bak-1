kustomize build ../nfs/overlays/production/ | kubectl apply -f -
# for f in `ls ../nfs/csi`; do echo kubectl apply -f $f; done
