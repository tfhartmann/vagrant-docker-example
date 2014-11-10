# Dockerfile
FROM centos:centos6
MAINTAINER Tim Hartmann <tfhartmann@gmail.com>
RUN yum install openssh-server -y
RUN sed -ri 's/#PermitRootLogin yes/PermitRootLogin yes/g' /etc/ssh/sshd_config
CMD /usr/sbin/sshd -D -o UseDNS=no -o UsePAM=no
