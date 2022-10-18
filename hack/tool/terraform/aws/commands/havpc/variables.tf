variable "region" {
  description = "The AWS region where resources will live"
  type        = string
}

variable "vpc_id" {
  description = "The ID of the AWS VPC used for this configuration"
  type        = string
}

variable "name" {
  description = "The 'friendly' name of the cluster"
  type        = string
}

variable "subnet_idx" {
  description = "The network number of a subnet in the VPC CIDR block"
  type        = number
}

variable "controllers" {
  description = "The number of k0s controllers"
  type        = number
}
variable "workers" {
  description = "The number of k0s workers"
  type        = number
}

variable "instance_type" {
  description = "The type of EC2 instances to create"
  type        = string
  default     = "c5a.xlarge"
}

variable "k0s_binary" {
  description = "The name of the k0s binary in '/tool/data' that will be uploaded to nodes"
  type        = string
  default     = ""
}

variable "k0s_version" {
  description = "The version of the k0s binary that will be installed"
  type        = string
  default     = ""
}

variable "k0s_airgap_bundle" {
  description = "The k0s airgap bundle containing all required images"
  type        = string
  default     = ""
}

variable "k0s_airgap_bundle_config" {
  description = "The k0s airgap YAML manifest defining the required images"
  type        = string
  default     = ""
}

variable "k0s_update_binary" {
  description = "The name of the binary in '/tool/data' that will be available for update via S3"
  type        = string
  default     = ""
}

variable "k0s_update_airgap_bundle" {
  description = "The name of airgap bundle in '/tool/data' that will be available for update via S3"
  type        = string
  default     = ""
}