# prometheus

1. 安装CRD
   ``` shell
   LATEST=$(curl -s https://api.github.com/repos/prometheus-operator/prometheus-operator/releases/latest | jq -cr .tag_name)
   
   curl -sL https://github.com/prometheus-operator/prometheus-operator/releases/download/${LATEST}/bundle.yaml | kubectl create -f -
   ```
   如果获取不到版本的话，直接去github翻最新版本
   ```
   kubectl create -f https://github.com/prometheus-operator/prometheus-operator/releases/download/v0.61.0/bundle.yaml
   ```
2. 部署几个测试程序
3. 如果在群集上激活了RBAC授权，则必须先创建RBAC权限，事先获得Prometheus服务帐户
5. 启动ServiceMonitor
4. 启动Prometheus
5. 启动PodMonitor
6. 暴露Prometheus

# ingress

1. 安装ingress(nginx)
   ```
   kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml
   ```
2. 配置nginx