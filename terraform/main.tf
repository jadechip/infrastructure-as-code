// Configure the Google Cloud provider
variable "gcp_credentials_path" {
  type = string
}

variable "region" {
  type = string
}

variable "zone" {
  type = string
}

variable "ssh_username" {
  type = string
}

variable "ssh_pub_key_path" {
  type = string
}

provider "google" {
 credentials = "${file(var.gcp_credentials_path)}"
 project     = "untitled"
 region      = "${var.region}"
}