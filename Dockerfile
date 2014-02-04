FROM ubuntu:12.04
ENV DEBIAN_FRONTEND noninteractive
ENV PATH /usr/local/rvm/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

# update apt
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get -y dist-upgrade
RUN apt-get install -y beanstalkd

EXPOSE 11300
ENTRYPOINT /usr/bin/beanstalkd
