##########################################
# 				Solr 5.2
##########################################

# base image.
# FROM rajsaxena/java8
FROM rajsaxena/supervisor

# File Author / Maintainer
MAINTAINER Raj <rajs@mangospring.com>

LABEL Description="A layer of Solr server on top of Java container"

COPY solr_5.2.0 /solr
COPY entrypoint.sh /

# Default home directory
WORKDIR /solr

# Will have to add more options to solr script to execute command if passed in startup - https://goo.gl/iqGdBw
ENTRYPOINT ["/entrypoint.sh"] 

#CMD ["/solr/bin/solr"]

# Supervisord can be used later to ensure app in background.
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
# CMD ["/usr/bin/supervisord"] 

#Exposing Solr port 
EXPOSE 8989
