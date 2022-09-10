FROM centos
MAINTAINER Radhakrishna
RUN yum install -y java-1.8.0-openjdk
RUN wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo
RUN rpm --import http://pkg.jenkins-ci.org/redhat-stable/jenkins-ci.org.key
RUN yum install -y jenkins
EXPOSE 8080:8080/tcp
ENTRYPOINT service jenkins start && sleep 5 && tail -f /var/log/jenkins/jenkins.log
