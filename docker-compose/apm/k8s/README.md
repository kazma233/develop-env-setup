``` shell
brew install kind
kind create cluster --config kind.yml

# 安装ingress(nginx)
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml
```