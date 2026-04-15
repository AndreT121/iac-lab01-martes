# Terraform Infrastructure Management

Este directorio contiene los archivos de configuración de Terraform para el aprovisionamiento de contenedores Docker.

## Flujo de Trabajo

Siga estos pasos para la ejecución de la infraestructura:

1. Inicialización:
Prepare el directorio de trabajo descargando los proveedores necesarios.
terraform init

2. Gestión de Entornos:
Crearemos primero un ambiente:
terraform workspace new <nombre_del_ambiente>

3. Planificación:
Realizaremos un plan para previsualizar los cambios:
terraform plan

4. Despliegue:
Desplegaremos un plan en el entorno activo:
terraform apply

## Recursos de Infraestructura

* Docker Container (API): Utiliza la imagen lab/api y expone el puerto interno 8080.
* Docker Container (Web): Utiliza la imagen lab/web y expone el puerto interno 80.
* Proveedor: krenzwerker/docker versión 4.2.0.