# Proyecto IAC-LAB01-MARTES

Este repositorio contiene la estructura para el despliegue de infraestructura automatizada y el código fuente de los servicios asociados.

## Estructura del Proyecto

* iac/: Configuraciones de Terraform para la gestión de contenedores Docker.
* src/api/SpringBootHelloWorld: Código fuente del microservicio basado en Java y Spring Boot.
* src/web1: Aplicación frontend principal.
* src/web2: Aplicación frontend secundaria.

## Instrucciones Generales

1. Compilación: Es necesario generar los artefactos de la aplicación en la carpeta src antes del despliegue.
2. Infraestructura: El despliegue de los servicios se gestiona desde la carpeta iac utilizando Terraform.
3. Configuración: Los puertos de exposición están definidos mediante variables para permitir múltiples entornos.