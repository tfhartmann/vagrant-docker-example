# Dockerfile for CentOS 7
FROM centos:centos7
MAINTAINER Tim Hartmann <tfhartmann@gmail.com>
RUN rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm
RUN yum install -y install \
    tar \
    puppet \
    openssh-server
RUN sed -ri 's/#PermitRootLogin yes/PermitRootLogin yes/g' /etc/ssh/sshd_config
RUN echo 'root:changeme'|chpasswd
RUN mkdir /var/run/sshd
RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N '' 
CMD cat /etc/redhat-release
