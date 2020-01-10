terraform {
  backend "s3" {
    key                         = "production.tfstate"
    region                      = "eu-central-1"
    endpoint                    = "fra1.digitaloceanspaces.com"
    skip_credentials_validation = true
    skip_metadata_api_check     = true
  }
}

provider "digitalocean" {}

resource "digitalocean_kubernetes_cluster" "looking4mage" {
  name    = var.name
  region  = var.region
  version = var.k8s_version

  node_pool {
    name       = "worker"
    size       = var.worker_size
    auto_scale = true
    min_nodes  = 1
    max_nodes  = var.worker_max_count
  }
}

