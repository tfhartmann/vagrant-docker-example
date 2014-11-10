# Dockerfile for CentOS 6
FROM centos:centos6
MAINTAINER Tim Hartmann <tfhartmann@gmail.com>
RUN rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-6.noarch.rpm
