variable "region" {
  description = "The AWS region to create things in."
  default     = "ap-southeast-1"
}
variable "key_name" {
  description = " SSH keys to connect to ec2 instance"
  default     =  "EC2_private_key_pair"
}
variable "machine_type" {
  description = "instance type for ec2"
  default     =  "t2.micro"
}
variable "cluster_name" {
  description = "Environmanet Type"
  default     =  "development"
}
variable "zone1" {
  description = "Availability zone1"
  default     =  "ap-southeast-1a"
}
variable "zone2" {
  description = "Availability zone2"
  default     =  "ap-southeast-1b"
}
variable "vpc_name" {
  description = "vpc name"
  default     =  "prod-vpc"
}
variable "cluster_nodes" {
  description = "cluster node name"
  default     =  "prod-cluster"
}
