# docker_nodejs
A docker machine for Nodejs projects 


# How To:

* Install Docker on your machine, eg. Ubuntu: https://docs.docker.com/installation/ubuntulinux/
* Get Dockerfile:

```
git clone https://github.com/eon01/docker_nodejs
cd docker_nodejs
sudo docker build -t nodejs .
sudo docker run  -i -t -p 8081:8080 nodejs
```

Now you can see server runnuing at: http://127.0.0.1:8081

