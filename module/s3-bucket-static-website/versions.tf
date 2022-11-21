terraform {
  #specify minimum
  required_version = ">=0.13.1"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.73"
    }

    random = {
      source = "hashicorp/random"
      version = ">= 3.1.1"
    }
  }
}

/*
Each module should at least declare the minimum provider version it is known to work with, using the >= version constraint syntax:

A module intended to be used as the root of a configuration — that is, as the directory where you'd run terraform apply — should also specify the maximum provider version it is intended to work with, to avoid accidental upgrades to incompatible new versions

*/