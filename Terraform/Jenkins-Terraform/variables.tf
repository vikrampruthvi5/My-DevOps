variable "common_tags" {
  default = {
    "Created_By" : "pv-terraform user created using Terraform"
  }
}

variable "http_cidrs" {
  default = ["0.0.0.0/0"]
}

variable "name" {
  default = "Jenkins-Terraform-"
}