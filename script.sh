#!/bin/bash

#Création du namespace
kubectl create namespace tp-global
#Création des deployments
cd ./Kubernetes/Deployments/
deployments=("adservice-deployment.yml","cartservice-deployment.yml","checkoutservice-deployment.yml","currencyservice-deployment.yml","emailservice-deployment.yml","frontend-deployment.yml","loadgenerator-deployment.yml","paymentservice-deployment.yml","productcatalogservice-deployment.yml","recommendationservice-deployment.yml","redis-deployment.yml","shippingservice-deployment.yml")
for e in $deployments
do
    # echo $e
    kubectl create -f ${e}
done

#Création de services
services=("adservice-service.yml","cartservice-service.yml","checkoutservice-service.yml","currencyservice-service.yml","emailservice-service.yml","frontend-service.yml","loadgenerator-service.yml","paymentservice-service.yml","productcatalogservice-service.yml","recommendationservice-service.yml","shippingservice-service.yml")
cd ./Kubernetes/Services/
for s in  $services
do
    # echo $s
    kubectl create -f ${s}
done
# minikube service result -n=global-vote-app
# minikube service vote -n=global-vote-app
