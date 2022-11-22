# Solution

## Build and push docker image

```bash
$ docker build -t ak96akshaykumar/service-app:latest .
$ docker push ak96akshaykumar/service-app:latest
```

## To run services in minikube

```bash
$ minikube start
$ cd helm
$ helm install shop-service shop-service
$ helm install cart-service cart-service
$ helm install checkout-service checkout-service
$ helm install payment-service payment-service
```

## Access the services

```bash
$ kubectl port-forward service/shop-service 4000:80
$ curl http://localhost:4000/
$ kubectl port-forward service/cart-service 4000:81
$ curl http://localhost:4000/
$ kubectl port-forward service/checkout-service 4000:82
$ curl http://localhost:4000/
$ kubectl port-forward service/payment-service 4000:83
$ curl http://localhost:4000/
```

## Run prometheus and grafana

```bash
$ helm repo add stable https://charts.helm.sh/stable
$ helm repo update
$ helm install prometheus-operator stable/prometheus-operator
$ helm install grafana-operator appscode/grafana-operator
```

## Create grafana dashboard to monitor cluster and services

```bash
$ kubectl port-forward service/prometheus-operator-grafana 4000:80
```

Access grafana UI at http://localhost:4000
Add prometheus datasource
Create dashboard -> import dashboard.json
View created dashbaord