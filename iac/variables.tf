variable "api_port" {
  description = "Puerto externo para la API según el workspace"
  type        = map(number)
  default     = {
    "default" = 8080
    "dev"    = 9090
  }
}

variable "web_port" {
  description = "Puerto externo para la WEB según el workspace"
  type        = map(number)
  default     = {
    "default" = 80
    "dev"    = 8080
  }
}