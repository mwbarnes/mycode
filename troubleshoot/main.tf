terraform { // another comment
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 4.0.0"
    }
  }
}

provider "docker" {}
  
resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = true
}

variable "container_name" {
   default = "Trouble"
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id
  name  = var.container_name
  // name  = "troubleshoot"
  ports {
    internal = 80
    external = 8089
  }
}

output "container_id" {
  description = "ID of the Docker container"
  value       = docker_container.nginx.id
}

output "image_id" {
  description = "ID of the Docker image"
  value       = docker_image.nginx.image_id
}
