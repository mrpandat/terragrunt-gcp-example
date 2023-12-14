variable "gcp_region" {
  description = "The GCP region to deploy to (e.g. us-east-1)"
  type        = string
}

variable "gcp_zone" {
  description = "The GCP zone to deploy to (e.g. us-east-1-a)"
  type        = string
}

variable "gcp_project_id" {
  description = "The GCP project id to deploy to (e.g. myfavoriteproject-XXXXX)"
  type        = string
}

variable "name" {
  description = "The name of the DB"
  type        = string
}

variable "instance_class" {
  description = "The instance class of the DB (e.g. db.t2.micro)"
  type        = string
}
