### `Terraform` `GKE` `Jenkins`
# `Deploy backend application on kubernetes cluster using CI/CD jenkins pipeline  triggered by GitHub_hook using the following steps and high-level diagram :`
. Implement secure Kubernetes cluster
. Deploy and configure Jenkins on Kubernetes.
. Deploy backend application on Kubernetes using Jenkins pipeline .
____________________________________________________________________________________________________________
## - `1- Create GKE using terraform.`
### Building infrastructure IaC on GCP using Terraform to Build The Following : 
#### -Network 
- vpc and 2 subnets  
- Firewalls 
- NAT  and Router
#### -Private GKE [ Google Kubernetes Platform ] Cluster. 
#### -VM
at the same vpc of the worker node.
 - SSH on the vm to connect with cluster( authorize the control node)
then create a service account with owner role and generate access key

## - `2- Deploy Jenkins (master & slave) on GKE.`
* Install and handling Jenkins as a deployment on the cluster by applying the Jenkins deployment YAML file
at this command
```
kubectl apply -f <the name of deployment file>.yaml
```
* I hit the external IP of loud parlance 35.188.53.251 on the browser the GUI of Jenkins will running
handling Jenkins login

## - `3- Create a pipeline using Jenkins to build image and push it to docker hub and deploy simple web app on GKE the pipeline triggered by GitHub_hook.`
### Start work on the jenkins Pipelines:
* 1- Build from docker file (by using webhook mechanism to trigger the build of a Jenkins project in response to a commit pushed to a Git repository).
* 2- Push on docker hub registry.
* 3- Deployment on the worker nods at the GKE Cluster.


## Future modifications:
 Using modules strategies to build the infrastructure 



