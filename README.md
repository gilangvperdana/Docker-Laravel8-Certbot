# Modified from [https://github.com/aschmelyun/docker-compose-laravel]
# Simply deploy an Laravel-app with Docker and Certbot
    Simply deploy an Laravel-app with CertBot and Docker for mid-Production.
```Environment:
Environment:
    1. VPS with Public IP and DNS Record Configured (CNAME & A).
    2. Linux Ubuntu Server.
    3. Docker.
```

# Installation
```
The "src" folder is our laravel project folder, please move it to that folder without a folder in it:
$ cd laravel-project
$ cp -r * docker-laravel8/src (make sure example site on /src has been deleted, $ rm -r *)

Then, run the docker-compose:
$ docker-compose up -d

Then, goes to nginx container to activate SSL:
$ docker ps (makesure the container nginx was activated)
$ docker exec -it nginx bash
$ certbot --nginx -d yourdomain.com -d www.yourdomain.com

Then, customize default.conf Nginx (do this in an nginx container):
$ apt update
$ apt install nano
$ nano /etc/nginx/conf.d/default.conf
fill in the configuration as in ./nginx/ex.conf (but adjust the domain according to your domain.)

Then, reload the Nginx (do this in an nginx container):
$ nginx -t
$ nginx -s reload

Access: https://yourdomain.com
```
