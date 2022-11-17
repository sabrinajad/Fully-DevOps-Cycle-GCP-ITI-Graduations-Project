# Terraform-GCP-Jenkins-Final
* [General info](#general-info)
Building infrastructure IaC on GCP using Terraform to Build The Following : 
## Network (vpc and 2 subnets)  
## Firewalls 
## NAT  and Router
## GKE [ Google Kubernetes Platform ] ,private 
##vm (at the same vpc of the worker node )
##ssh on the vm to connect with cluster( authorize the control node)
then create service account and with owner role and generate access key
##install and handling jenkins as a deployment on the cluster by apply the jenkins deployment yaml file
at this command
kubectl apply -f (the name of departmentfile).yaml
##I hit the external ip of loud parlancer 35.188.53.251  on the browser the GUI of jenkins will running 
handling jenkins login 
then start work on the Piplines
##Build from docker file ,
##push on docker hub 
##Deployment on the worker nods at the GKE Cluster



