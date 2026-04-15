resource "docker_container" "api" {
  name  = "api01-${terraform.workspace}"
  image = "lab/api"

  ports  {
        internal = 8080
        external = var.api_port[terraform.workspace]
    }
}

resource "docker_container" "web" {
  name  = "web01-${terraform.workspace}"
  image = "lab/web"

  ports  {
        internal = 80
        external = var.web_port[terraform.workspace]
    }
}