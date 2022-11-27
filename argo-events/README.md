# argo-events

https://argoproj.github.io/argo-events/installation/


```
curl -o base/install.yaml https://raw.githubusercontent.com/argoproj/argo-events/stable/manifests/install.yaml

# Install with a validating admission controller
curl -o base/install-validating-webhook.yaml https://raw.githubusercontent.com/argoproj/argo-events/stable/manifests/install-validating-webhook.yaml

# kubectl apply -n argo-events -f https://raw.githubusercontent.com/argoproj/argo-events/stable/examples/eventbus/native.yaml
```
