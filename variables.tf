variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "region" {
  description = "GCP Region"
  type        = string
  default     = "us-central1"
}

variable "gcp_sa_key" {
  description = "The Google Cloud Service Account key in JSON format"
  type        = string
}
