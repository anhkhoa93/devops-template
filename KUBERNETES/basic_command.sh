sudo apt-get update
sudo apt-get install curl
sudo apt-get install nano
sudo apt install net-tools

sudo apt install docker.io -y
sudo systemctl enable docker
sudo systemctl status docker


curl -LO https://github.com/kubernetes/minikube/releases/latest/download/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube && rm minikube-linux-amd64



curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl

sudo usermod -aG docker $USER && newgrp docker
minikube config set driver docker
minikube start



kubectl create deployment hello-minikube --image=kicbase/echo-server:1.0

kubectl expose deployment hello-minikube --type=NodePort --port=8080
minikube service hello-minikube
netstat -tlnp


ssh-add ~/.ssh/id_rsa
systemctl status

 - get informations of all nodes!
kubectl top node
 
 - get ram/cpu usage of all pods
kubectl top pod
 
 - get status/resatart statisitc of all pods
kubectl get pod
 
- list all containers of a pod:
kubectl top pod __pod_name__ --containers
 
- get detail information of a pod
kubectl describe pod __pod_name__
    
- get log of specific container in a pod?
kubectl logs __pod_name__ -c __container_name__ > log.txt

- get log of specific container in a pod and print to console
kubectl logs __pod_name__ -c __container_name__  -f
