variable "region" {
  description = "the region to deploy resources"
  type = string
  default = "us-central1"
}

variable "zone" {
  description = "zone to deploy resources"
  type = string
  default = "us-central1-a"
}

variable "project_id" {
  description = "the GCP project ID"
  type = string
}