# Dockerfile for CentOS 6
FROM centos:centos6
MAINTAINER Tim Hartmann <tfhartmann@gmail.com>
RUN rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-6.noarch.rpm
RUN yum install -y install \
    tar \
    puppet \
    openssh-server
RUN sed -ri 's/#PermitRootLogin yes/PermitRootLogin yes/g' /etc/ssh/sshd_config
RUN /etc/init.d/sshd start
RUN echo 'root:changeme'|chpasswd
CMD cat /etc/redhat-release
