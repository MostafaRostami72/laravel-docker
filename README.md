# laravel docker

## Getting started

### 1 - clone project to local
```bash
git clone https://github.com/MostafaRostami72/laravel-docker
```

### Config


```
 cp docker-compose.example.yml docker-compose.yml
 
 cd nginx
 
 cp default.exmple.conf default.conf
```

### Edit ports and DB variables for mysql and nginx and redis in docker-compose.yml 

### install docker and docker compose on your os

https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-18-04
https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-compose-on-ubuntu-20-04

### Edit laravel .env
```
 cd src
 cp .env.example .env
 
 sudo docker-compose run --rm artisan key:generate
```


### install laravel packages
```bash
sudo docker-compose run --rm composer install
```

### install npm packages
```bash
sudo docker-compose run --rm npm install
```

run docker
```bash
sudo docker-compose up -d --build
```

If you have a port error when running, you should edit the docker-compose.yml file of the ports

for use composer or npm or artisan or ... use this command
```bash
sudo docker-compose run --rm composer
```
this command run from src folder

example for migration

```bash
sudo docker-compose run --rm artisan migrate
```