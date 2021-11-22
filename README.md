Steps

1. Install Terraform on an EC2 instance. Install all other dependencies
2. Clone this repository in local folder in EC2

anjan-ghosh/terraform-eks-jenkins-helm



3. Edit the terraform.tfvars to match your values based on the IaaS - Optional
4. Edit or remove the set_sensitive arguments in helm_release.tf if you would like to -  Optional
5. Run a terraform init to grab providers and modules
6. Run aws_configure and establish your credentials
7. Run a terraform_apply  35 resource will be created takes 10-15 min
8.  Warning : wait 10 - 15 minutes. Note: If it fails for HTTP timeout while waiting to apply the Helm chart, retry terraform_appl
9. Show the AWS Console screens!!!

Manual step
#### to add the cluster context to your kubeconfig
10. $ aws eks --region ap-southeast-1  update-kubeconfig --name prod-cluster
11. $ kubectl get pods and kubectl get svc  ###to ensure Jenkins deployed as expected
12. Run kubectl patch svc jenkins -p '{"spec": {"type": "LoadBalancer"}}'         to change the Service to type LoadBalancer
13. Run kubectl get svc again to grab the AWS created DNS address
14. Go to your browser and navigate to http://<dns-address>:8080 Note: This may take 3 - 5 minutes to resolve while waiting for Jenkins to fully initialize.

Modify  the deployment

15. Add an additional node/pod from 2 to 3
16. Run a terraform_apply

Delete the deployment

17. Terraform destroy
