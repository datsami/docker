## Sample Node Project for Hub Demo

This is the best node.js application that has ever been built in the whole of the history of node.js applications.


## get started 
  - ref: https://docs.docker.com/get-started/ | https://youtu.be/iqqDU2crIEQ
  - cont:
    ```
    docker build --tag hello-world .
    docker images
    docker run -p 8080:80 --name hello -d hello-world
    ```
  - chrome: http://localhost:8080
  - container:
    ```
    docker ps -a
    docker stop hello
    docker start hello
    docker logs hello
    ```
  - push image: docker hub > create image
    ```
    docker tag hello-world vuthanhdatsami/hello-world
    docker push vuthanhdatsami/hello-world
    ```
  - pull image:
    ```
    docker rmi vuthanhdatsami/hello-world:latest 
    docker pull vuthanhdatsami/hello-world
    ```
  - docker-compose.yml:
    ```
    docker-compose up -d
    docker ps -a
    docker image
    ```