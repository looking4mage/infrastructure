variable "region" {
  default     = "fra1"
  description = "Region we're operating the platform in."
}

variable "name" {
  description = "The cluster name that will be used from here on."
}

variable "k8s_version" {
  default     = "1.16.2-do.2"
  description = "Version of Kubernetes we're running."
}

variable "worker_size" {
  default     = "s-1vcpu-2gb"
  description = "The worker node instance size."
}

variable "worker_max_count" {
  default     = 5
  description = "The maximum number of nodes we'd be willing to autoscale to."
}

