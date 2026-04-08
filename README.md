# iac-lab01-martes

Tenemos código de una aplicación web. Se compone por un archivo HTML que tiene como contenido: WEB01

Quiero poder publicar esta web, especificamente una sola copia como primera instancia

TAREA:

Desplegar dos web, mostrar Web01, y Web02 como contenido
Los puertos deben estar configurados en 4000 y 4001
Gestionar carpetas para orden
Hacer uso de Gitflow/Conventional Commits

# COMO CONSTRUIR LAS IMAGENES DE DOCKER
  Web 01
    - Ingresa a la carpeta web 1
    - Usa el comando: docker build -t img-web01 .
    - Luego correlo con: docker run --name cont-web01 -d -p 4000:80 img-web01

  Web 02
    - Ingresa a la carpeta web 2
    - Usa el comando: docker build -t img-web02 .
    - Luego correlo con: docker run --name cont-web02 -d -p 4001:80 img-web02
