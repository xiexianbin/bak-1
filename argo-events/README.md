# argo-events

Argo Events是Kubernetes的事件驱动工作流自动化框架

- https://argoproj.github.io/argo-events/installation/
- https://github.com/argoproj/argo-events/blob/master/manifests/README.md

```
# Deploy Argo Events SA, ClusterRoles, and Controller for Sensor, EventBus, and EventSource
curl -o base/install.yaml https://raw.githubusercontent.com/argoproj/argo-events/stable/manifests/install.yaml

# Install with a validating admission controller
curl -o base/install-validating-webhook.yaml https://raw.githubusercontent.com/argoproj/argo-events/stable/manifests/install-validating-webhook.yaml

# Deploy the eventbus
curl -o base/native.yaml https://raw.githubusercontent.com/argoproj/argo-events/stable/examples/eventbus/native.yaml
```
