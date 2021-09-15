# Cours Nutanix

On teste Nutanix

## Description

adservice ==> golang. Il existe un dockerfile
cartservice ==> .csproj et Pas de dockerfile (Cf Worker)
checkoutservice ==> .go . Il existe un dockerfile
currencyservice ==> .js. Pas de DOckerfile (cf TP-vote, appli result)
emailservices ==> .py et pas de Dockerfile (cf TP-vote, appli vote)
frontend ==> .go et il existe un Dockerfile
loadgenerator ==> .py et il existe un Dockerfile
paymentservice ==> .js et pas de DOckerfile
productcatalogservice ==> .go et il existe un Dockerfile
recommendationservice ==> .py et pas de Dockerfile
shippingservice ==> .go et il existe un Dockerfile

5 dockerfile a construire

## Prérequis
1. VS Code
2. Docker
3. Kubernetes (minikube et kubectl)
4. GCP
5. Openstack

## Démarrage

1. Créer les dockerfile manquants
2. Créer un docker-compose (fichier .yml) afin de pouvoir tester les dockerfile
Appeler les services avec le nom ==> pour le service permettant de démarrer adservice : l'appeler adservice
3. Utilisation de Kubernetes :
    - Création d'un namespace (à faire avec l script de 4. ?)
    - Créations de déploiements : 1 par micro-service et 1 pour la BDD non relationnelle en mémoire redis => 12  déploiements
    - Vérifier le build des images crées avec les dockerfile/docker-compose
    - Création des services : 10 services cluster IP et 1 service Node port
4. Tester les ressources à l'aide d'un script (modifirer le fichier scipt.sh afin de pouvoir parcourir tous les fichiers .yml du dossier Kubernetes)
5. Pour le cloud public, penser à intégrer la phase CI/CD avec GCP :
    - Création d'un dépôt Git
    - Création d'un fichier buildconfig
    - Création d'un trigger
6. Sculpture du cloud privé en utilisant l'IaaS Code (Terraform)
7. Utiliser Openstack et Ansible. Utiliser les playbooks et autres documents du GitHub de la fondation OpenStack

8. Problèmes de Dockerfile :
- Problème sur le dockerfile adservice ==> ne marche pas car problème de "RUN ./gradlew downloadRepos"
- Erreur sur le dockerfile de cartservice ligne 11 ==> test/ manque un "s" à test ?
RUN dotnet restore

git clone https://github.com/utopios/TP-cloud.git --config core.autocrlf=input
