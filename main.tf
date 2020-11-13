terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

provider "google" {
  version = "3.5.0"

  credentials = file("{CREDENTIALS}.json")

  project = "{PROJECTID}"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
  auto_create_subnetworks = "true"
}

resource "google_compute_instance" "default" {
  name         = "terraformed-microvm"
  machine_type = "f1-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
      size = 30
      type = "pd-standard"
    }
  }

  network_interface {
    network = "default"
    access_config {
      
    }
  }
}