kubectl create secret tls default-tls \
  --cert ../common/xiexianbin.cn.bundle.crt \
  --key ../common/xiexianbin.cn.key \
  -o yaml \
  --dry-run='client' \
  > ../common/default-tls.yaml
