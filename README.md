
# 🚀 How to Run Your Application on Kubernetes

This guide will help you run your application on a Kubernetes cluster using deployment, service, and ingress resources.

---

## 🧱 Step 1: Run the Application with Docker

Use the `Dockerfile` present in this repository to build and run your container locally using Docker.

---

## 🔗 Step 2: Follow the Docker Setup Blog

Detailed steps are available here:

🔗 [How to run the container with the help of Docker](https://dev.to/nandkishor/how-to-run-the-container-with-the-help-of-docker--17p)

---

## ✅ Step 3: Verify Docker Container is Running

Ensure the Docker container is running successfully by following the blog. If it is, proceed to Kubernetes steps.

---

## 📦 Step 4: Deploy to Kubernetes Using `deployment.yaml`

Apply the deployment configuration using the following commands:

```bash
kubectl apply -f deployment.yaml
kubectl get deployments
kubectl get all
```

- `kubectl apply -f deployment.yaml`: Apply the deployment.
- `kubectl get deployments`: Check if the deployment is running.
- `kubectl get all`: View all resources like Pods, Services, Deployments, ReplicaSets, etc.

---

## 🌐 Step 5: Expose Application Using `service.yaml`

Apply the service configuration with:

```bash
kubectl apply -f service.yaml
kubectl get services
```

- `kubectl apply -f service.yaml`: Create the service.
- `kubectl get services`: Verify the service is active.

---

## 🛡️ Step 6: Setup Ingress Using `ingress.yaml`

Deploy the ingress configuration to route external traffic:

```bash
kubectl apply -f ingress.yaml
kubectl get ingress
```

If you're using **Minikube**, enable the ingress controller:

```bash
minikube addons enable ingress
```

---

## 🎉 Congratulations!

Your application is now successfully running on Kubernetes!


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
