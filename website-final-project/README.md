## - Create a pipeline using Jenkins to build image and push it to docker hub and deploy simple web app on GKE the pipeline triggered by GitHub_hook.
### Start work on the jenkins Pipelines:
* 1- Build from docker file (by using webhook mechanism to trigger the build of a Jenkins project in response to a commit pushed to a Git repository).
* 2- Push on docker hub registry.
* 3- Deployment on the worker nods at the GKE Cluster.
