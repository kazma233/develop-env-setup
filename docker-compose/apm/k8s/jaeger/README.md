1. 安装证书
   ```
   kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.6.3/cert-manager.yaml
   ```
2. 安装jaeger crd
   ```
   kubectl create -f https://github.com/jaegertracing/jaeger-operator/releases/download/v1.39.0/jaeger-operator.yaml -n observability
   ```
3. 创建rbac相关
   ```
   kubectl create namespace observability
   kubectl apply -f jaeger-rbac.yml
   ```
4. 安装jaeger
