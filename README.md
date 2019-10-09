## Java Tomcat Example con CI

## Instrucciones para la ejecución
 
Creamos un docker-compose con
- Jenkins para orquestar las ejecuciones de pruebas, construcción y despliegue.
- Sonar para ejecutar calidad de código

Ejecutamos “docker-compose up -d”.

Configuramos el Jenkins y sonar.

Generamos un token de seguridad en sonar para ejecutar los análisis.

Guardamos el token en el credential manager de Jenkins.

Es necesario darle permisos a /var/run/docker.sock dentro del servidor Jenkins para que el usuario Jenkins tenga los permisos necesarios para ejecutar Docker

Configuramos las librerías compartidas en Jenkins apuntándolas al repositorio donde estén.

Configuramos un “Pipeline Job” que apunte al repositorio donde tenemos nuestro proyecto de Java.

Añadimos los archivos necesarios para la construcción (Dockerfile, Jenkinsfile) en el repositorio del proyecto de Java.

Ejecutamos Build en Jenkins para ejecutar las etapas de:
- Sonar
- Pruebas Unitarias
- Empaquetado
- Construction y Despliegue a Github
- Seguridad

Para seguridad utlizamos Dependcy Check, haciendo la ejecucion con maven.

Repo con librerias compartidas.
https://github.com/marioeliasma/jenkins-sharedlib


## Instrucciones para levantar en kubernetes

Construimos nuestro pod con las configuraciones del servicio y ejecutamos:

minikube start --cpus 2 --memory 4096  (Para levantar un cluster)
kubectl apply -f java-tomcat.yaml (Para levantar el servicio)