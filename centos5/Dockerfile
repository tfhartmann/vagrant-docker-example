# Dockerfile for CentOS 5
FROM centos:centos5
MAINTAINER Tim Hartmann <tfhartmann@gmail.com>
RUN rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-5.noarch.rpm
RUN yum install -y install \
    puppet \
    openssh-server
RUN sed -ri 's/#PermitRootLogin yes/PermitRootLogin yes/g' /etc/ssh/sshd_config
RUN /etc/init.d/sshd start
RUN echo 'root:changeme'|chpasswd
CMD cat /etc/redhat-release
