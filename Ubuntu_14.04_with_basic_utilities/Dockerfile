############################################################
# Dockerfile to build minimal container image
# Based on Ubuntu
############################################################
# Set the base image to Ubuntu
FROM ubuntu:14.04

# File Author / Maintainer
MAINTAINER Raj <rajs@mangospring.com>

LABEL Description="This image contains the basic ubuntu 14.04 image with curl, vim and ssh" Version="1.0"

# Adding DEBIAN_FRONTEND="noninteractive" variable, so that upgrade doesn't generates error.
ENV DEBIAN_FRONTEND=noninteractive

# Update the repository sources list
# Install essential utilities
RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y build-essential && \
  apt-get install -y software-properties-common && \
  apt-get install -y byobu curl htop man unzip vim wget ssh && \
  rm -rf /var/lib/apt/lists/*

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

# Define default command.
CMD ["bash"]



