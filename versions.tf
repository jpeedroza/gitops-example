terraform {
  required_version = "~> 1.3"

  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }

  cloud {
    organization = "github-actions-pipelines"
    workspaces {
      name = "pipeline-test-dev"
    }
  }
}

variable "do_token" {}

provider "digitalocean" {
  token = var.do_token
}
