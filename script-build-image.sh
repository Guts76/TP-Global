#!/bin/bash

declare -a images=("adservice" "cartservice" "checkoutservice" "currencyservice" "emailservice" "frontend" "loadgenerator" "paymentservice" "productcatalogservice" "recommendationservice" "shippingservice") 

for e in ${images[@]}
do
    echo "-------------------------- Debut de ${e} --------------------------"
    docker build -t ${e} "./${e}/."
    echo "-------------------------- Fin de ${e} --------------------------"
done