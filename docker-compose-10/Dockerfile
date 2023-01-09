FROM "ubuntu"

RUN apt-get update

RUN apt-get install nginx -y

RUN apt-get install apache2 -y

ADD apache.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/apache.sh

ADD nginx.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/nginx.sh

CMD ["echo", "prueba comando"]

EXPOSE 80