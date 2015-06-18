# base image.
FROM rajsaxena/java8

RUN apt-get update && apt-get install -y supervisor

RUN mkdir -p /var/log/supervisor

CMD ["/usr/bin/supervisord"]
