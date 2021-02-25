## nginx
    - ref: https://www.docker.com/blog/how-to-use-the-official-nginx-docker-image/
    - sample config:

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