
# To-Do List | Microservicio con Java Springboot y base de datos | Dockerizado

## Misma red dentro de docker
* Para crear una red dentro de docker utiliza el siguiente comando: 
    >docker network create NETWORK_NAME
* Para listar las redes dentro de docker utiliza el siguiente comando: 
    >docker network ls
* Para conectar un contenedor a una red utiliza:
    >docker network connect NETWORK_NAME CONTAINER_NAME
* Para asegurarte de que estan dentro de la misma red utiliza:
    >docker network inspect NETWORK_NAME


## Base de datos MYSQL con el esquema 
### Las siguientes instrucciones deben seguirse para iniciar el contenedor de la base de datos
* Descargar el repositorio con el tag correspondiente de la base de datos: 
    >docker pull jonathandevah/todo-environment:mysqldb
* Descargar el repositorio de github donde se encuentra el archivo docker-compose, y el esquema de la base de datos:
    >https://github.com/jach17/MSJavaMysqlDcoker.git
* Para levantar el contenedor, posicionate dentro del repositorio a la altura del archivo docker-compose y utiliza el siguiente comando: 
    >docker-compose up -d
* Conecta el contenedor creado (docker-db-1) a la red creada NETWORK_NAME
    >docker network connect NETWORK_NAME CONTAINER_NAME



## Microservicio con Java Springboot
### Las siguientes instrucciones deben seguirse para iniciar el contenedor de este microservicio:
* Descargar el repositorio con el tag correspondiente del microservicio de Docker Hub:
    >docker pull jonathandevah/todo-environment:task-service

* Para levantar el contenedor utiliza el siguiente comando que permitirá configurar el puerto, nombre y red en la cual se va a desplegar el contenedor: 
    >docker run -p 9090:9090 --name task-service --net NETWORK_NAME jonathandevah/todo-environment:task-service

* Asegurate de que en el espacio NETWORK_NAME coloques el nombre de una red existente en tu ambiente docker ya que en esta misma red se está conectando la base de datos


