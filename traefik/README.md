# deploy treafik

https://github.com/traefik/traefik-helm-chart

```
argocd app create -f production/traefik.yaml
argocd app delete traefik
```

- 参考 https://github.com/traefik/traefik-helm-chart/blob/498a645422fd6962f44279cf63d7272f39a551be/traefik/values.yaml 配置

```
$ kubectl get node -o wide | grep Ready | awk -F " " '{print $1}'
<node-name>

$ kubectl label nodes <node-name> edgenode=true
```

- 暴露的端口

- http: 30080
- https: 30443
- dashboard: 9000
  - <nodePort>/dashboard/
  - <nodePort>/api/
