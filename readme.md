## nginx
    - ref: https://www.docker.com/blog/how-to-use-the-official-nginx-docker-image/
    - sample config:
        ```
        docker pull nginx
        
        ```

## reverse_proxy_back_front:
    - ref: https://www.docker.com/blog/how-to-use-the-official-nginx-docker-image/

## reverse_proxy:
    - ref: https://phoenixnap.com/kb/docker-nginx-reverse-proxy
    - sample webservice:
        ```
        mkdir example1
        cd example1 
        sudo nano docker-compose.yml
        sudo nano index.html
        sudo docker-compose build
        sudo docker-compose up -d
        ```
    - sample webservice 2:
        ```
        mkdir example2
        cd example2
        sudo nano docker-compose.yml
        sudo nano index.html
        sudo docker-compose build
        sudo docker-compose up -d
        ```
    - list container:
        ```
        docker ps -a
        ```
## minimal-reverse-proxy-demo:
    - ref: Docker and Nginx Reverse Proxy: https://youtu.be/hxngRDmHTM0
    - code: https://github.com/productive-dev/minimal-reverse-proxy-demo

## get started
    - ref: https://docs.docker.com/get-started/
    - cont:
        ```
        docker build --tag hello-world .
        ```