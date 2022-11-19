# Terraform-GCP-Jenkins-Final
* [General info](#general-info)
Building infrastructure IaC on GCP using Terraform to Build The Following : 
## Network (vpc and 2 subnets)  
## Firewalls 
## NAT  and Router
## GKE [ Google Kubernetes Platform ] ,private 
## vm (at the same vpc of the worker node )
## general details:
* ssh on the vm to connect with cluster( authorize the control node)
then create a service account and with owner role and generate access key
* install and handling Jenkins as a deployment on the cluster by applying the Jenkins deployment YAML file
at this command
kubectl apply -f (the name of deployment file).yaml
* I hit the external IP of loud parlance 35.188.53.251 on the browser the GUI of Jenkins will running
handling Jenkins login
## start work on the jenkins Pipelines:
* 1- Build from docker file (by using webhook mechanism to trigger the build of a Jenkins project in response to a commit pushed to a Git repository).
* 2- push on docker hub registry.
* 3- Deployment on the worker nods at the GKE Cluster.
## future modifications:
* using modules strategies to build the infrastructure 



