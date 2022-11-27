## argocd

https://argo-cd.readthedocs.io/en/stable/getting_started/

- 获取源文件

```
curl -o base/install.yalm https://raw.githubusercontent.com/argoproj/argo-cd/v2.5.2/manifests/install.yaml
```

- 通过nodeport暴露服务

```
kubectl -n argocd patch svc argocd-server -p '{"spec": {"type": "NodePort"}}'
```
