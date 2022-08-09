# mediawiki-prod

# Deploying Mediawiki app into Azure Kubernetes service cluster

This Project Deploy Mediawiki Statefulset Application to AKS Cluster using Jenkins CI/CD. This Project is divided into Four following parts -

# 1)Terraform
It contains terraform(.tf) files which automate our infrastructure creation.

# 2)Docker
It contains mediawiki and database Dockerfile,which will be use to containerize our Application.

# 3)Jenkins
It contains Jenkins file,Which automate our continuous integration and continuous deployment process.

# 4)Kubernetes
It Contains Manifest files,Which will be used to creating our object like Deployment,Services,Persistent-volume etc and manage the containers.

# Prerequisites
1. Install Terraform and git on the machine.
2. Account setup in Azure.
3. Visual studio Code is installed.
4. Azure cli is installed.



# Steps
# A. Steps for creating AKS Cluster using Terraform.
1. az login(Choose your Microsoft credentials.)
2. terraform init
3. terraform plan
4. terraform apply -auto-approve


# B. Steps for Deploy Mediawiki App into Kubernetes Cluster using Jenkins Pipeline | Containerize Mediawiki App and Deploy into AKS Cluster.

we already create dockerfile for mediawiki source code which store in my github.We create a jenkins pipeline which pull the dockerfile from github and build it and upload to 
docker hub and aks cluster.

# Prerequisites
1. AKS Cluster is setup and running. 
2. Jenkins Master is up and running. 
3. Setup Jenkins slave to run Docker builds.
4. Docker, Docker pipeline and Kubernetes Deploy plug-ins are installed in Jenkins.

# Jenkins Lab:
1. Create Credentials for Docker Hub :-
    Go to Jenkins UI, click on Credentials -->Click on Global credentials -->Click on Add Credentials

2. Create Credentials for Kubernetes Cluster :- Click on Add Credentials, use Kubernetes configuration from drop down -->execute the below command to get kubeconfig info, copy the entire content of the file:
sudo cat ~/.kube/config -->Enter ID as K8S and choose enter directly and paste the above file content and save.

3. Create a pipeline in Jenkins :- Create a new pipeline job --> Copy the pipeline code from Jenkins folder -->  Build the pipeline.   

# Verify deployments to AKS cluster
```bash
1.  kubectl get pods
```
```bash
2.  kubectl get deployments
```
```bash
3.  kubectl get services
```

# Access Mediawiki App from Internet.
Once build is successful, go to browser and enter External-IP of LoadBalancer services.
You can access the application at http://{public-ip}/wiki

    






