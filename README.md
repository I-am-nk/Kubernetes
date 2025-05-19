# Kubernetes
**How to run your application on the kubernates**

Step1: First you have to run the container with the help of docker for that you can use the **dockerfile** which is presnt in this repository 

Step2: follow this blog for next steps https://dev.to/nandkishor/how-to-run-the-container-with-the-help-of-docker--17p

Step3: I hope with the help of step2 you are able to run the continer with the help of docker.

Step3: use the **deployment.yaml** file to run the deployment now follow the below steps one by one to run the deployment
 a. '''kubectl apply -f deployment.yaml''' ( to apply the deployment changes)
 b. kubectl get deployments ( check the deployment is running or not)
 c. kubect get all ( to check all the resources which is running on K8s like pods, services, deployment, replica sets and ingress

Step4: use **service.yaml** file to run the services now on K8s
 a. kubectl apply -f service.yaml ( to apply the deployment changes)
 b. kubectl get services ( check the service is created or not)
 
Step5: use the ingress.yaml file to use the ingress in your K8s as a load balancer.
 a. kubectl apply -f ingress.yaml ( to apply the ingress change)
 b. kubectl get ingress ( to check the ingress is deployed as a pod or not)
 c. minikube addons enable ingress (If you are using minikube for running you app into the K8s then run this command so it can download ingress controller )

Congratulation you are running your app on the kubernetes.

 ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Below are the most commenly use commands of K8s:

1️⃣ Check Cluster & Nodes

kubectl cluster-info                                   # Show cluster info
kubectl get nodes                                      # List all nodes  
kubectl describe node <node-name>    # Describe a specific node

2️⃣ Pod Operations
kubectl get pods                                                    # List all pods
kubectl get pods -o wide                                     # List pods with more details (IP, Node, etc.)
kubectl describe pod <pod-name>                   # Detailed info of a pod
kubectl logs <pod-name>                                   # View pod logs
kubectl exec -it <pod-name> -- /bin/bash      # Access pod shell (if available)
kubectl delete pod <pod-name>                      # Delete a pod

3️⃣ Deployment Operations
kubectl create deployment <name> --image=<image>    # Create deployment
kubectl get deployments                                                        # List deployments
kubectl describe deployment <name>                                # Details of deployment
kubectl scale deployment <name> --replicas=3                # Scale pods
kubectl rollout restart deployment <name>                     # Restart deployment
kubectl delete deployment <name>                                   # Delete deployment

4️⃣ Service Operations
kubectl expose deployment <name> --type=NodePort --port=80   # Expose deployment via NodePort
kubectl get svc                                                                                            # List services
kubectl delete svc <service-name>                                                        # Delete service

5️⃣ Config with YAML Files
kubectl apply -f <file.yaml>                # Create/update resource from YAML
kubectl get all                                       # List all resources (pods, svc, deployments, etc.)
kubectl delete -f <file.yaml>              # Delete resource from YAML

6️⃣ Namespace Operations (Optional)
kubectl get namespaces                          # List namespaces
kubectl create namespace <name>      # Create new namespace
kubectl delete namespace <name>     # Delete namespace

🔹 Pro Tip: Useful Minikube Commands
minikube start                                                             # Start Minikube cluster
minikube stop                                                             # Stop Minikube cluster
minikube status                                                          # Check Minikube status
minikube service <service-name>                          # Access service URL in Minikube
![image](https://github.com/user-attachments/assets/a809a8a2-3555-4408-8e17-735effad1a81)
