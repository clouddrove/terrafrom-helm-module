## The name of the deployment
variable "name" {
  description = "The name of the deployment"
}

variable "chart" {
  description = "The name of the chart "
}

variable "repository" {
  description = "The chart repo"
}

variable "namespace" {
  description = "The namespace to deploy to"
  default = "default"
}

variable "chart_version" {
  description = "(Required) Specify the exact chart version to install"
}

variable "values" {
  description = "Extra values"
  type        = list(string)
  default     = []
}

variable "config_path" {
}