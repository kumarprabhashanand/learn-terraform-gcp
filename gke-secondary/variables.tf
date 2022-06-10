variable "project_id" {
  description = "project id"
  default = "nik-gcp-learning"
}

variable "region" {
  description = "region"
  default = "asia-south2"
}

#variable "credentials_file" {
#  default = "/Users/prabhashkumar/Downloads/nik-gcp-learning-3a296ec20f3b.json"
#}
variable "subnet_name" {
  default = "nik-gcp-learning-sec-subnet"
}

variable "vpc_name" {
  default = "nik-gcp-learning-vpc"
}