docker-jenkins
==============

Dockerfile to build jenkins container

**Build**

`sudo docker build -t radhakrishna/jenkins github.com/radhakrishnamca10/docker-jenkins`

**Run**

`JENKINS_ID=$(sudo docker run -d radhakrishna/jenkins)`

**Connect**

`http://localhost:8080/`

_Docker will attempt to expose jenkins on local port 8080.

You can run this to confirm the local port:_
`sudo docker port $JENKINS_ID 8080`
