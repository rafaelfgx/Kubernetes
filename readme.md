# Kubernetes

## Install

* [Docker](https://www.docker.com/products/docker-desktop)
* [Minikube](https://minikube.sigs.k8s.io/docs/start)
* [Lens](https://k8slens.dev)
* [Helm](https://github.com/helm/helm/releases)
* [Azure CLI](https://docs.microsoft.com/cli/azure/install-azure-cli-windows)

## Minikube

* **Start Cluster:** minikube start

* **Delete Cluster:** minikube delete

* **Dashboard:** minikube dashboard

## Docker Build and Push Image

### Docker Hub

1. docker build . --file FILE --tag USER/IMAGE
2. docker tag USER/IMAGE USER/IMAGE:VERSION
3. docker login
4. docker push --all-tags USER/IMAGE

### Another Registry

1. docker build . --file FILE --tag REGISTRY/PROJECT/IMAGE
2. docker tag REGISTRY/PROJECT/IMAGE REGISTRY/PROJECT/IMAGE:VERSION
3. docker login https://REGISTRY
4. docker push --all-tags REGISTRY/PROJECT/IMAGE

## Docker Run

* **Docker:** docker run -p PORT:CONTAINER_PORT -d --name CONTAINER IMAGE

* **Docker Compose:** docker-compose up --build -d

## Kubctl

* **Get Contexts:** kubectl config get-contexts

* **Set Current Context:** kubectl config use-context CONTEXT

* **Set Current Namespace:** kubectl config set-context --current --namespace=NAMESPACE

* **Apply File:** kubectl apply -f FILE.yml

* **Apply Files Within Directory:** kubectl apply -f DIRECTORY

* **Restart Deployment:** kubectl rollout restart deploy DEPLOYMENT

* **Get All:** kubectl get all

* **Delete All:** kubectl delete namespace NAMESPACE OR kubectl delete all --all -n NAMESPACE

* **Get External IP:** minikube service SERVICE -n NAMESPACE

## Helm

* **Create Helm Chart:** helm create NAME

* **Apply Helm Chart:** helm upgrade NAME --values VALUES.yaml

## Helm Package

* helm package NAME

* helm repo index REPO/ --url https://USERNAME.github.io/REPO

* helm repo add REPO https://USERNAME.github.io/REPO

* helm install REPO/NAME --name=NAME

## Azure

* **Install Azure Kubernetes CLI:** az aks install-cli

* **Set Subscription:** az account set --subscription SUBSCRIPTION

* **Connect Azure Kubernetes Service:** az aks get-credentials --resource-group RESOURCE_GROUP --name CLUSTER_NAME --admin

* **Export Azure Kubernetes Service Configuration:** az aks get-credentials --resource-group RESOURCE_GROUP --name CLUSTER_NAME --admin --file FILE

* **Create Azure Credentials:** az ad sp create-for-rbac --name NAME --role contributor --scopes /subscriptions/SUBSCRIPTION/resourceGroups/RESOURCE_GROUP --sdk-auth
