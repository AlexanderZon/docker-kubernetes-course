# Imagembase
FROM ubuntu
# Executa comandos
RUN apt-get update
RUN apt-get install -y python3
RUN echo 1.0 >> /etc/version && apt-get install -y git \
    && apt-get install -y iputils-ping

## WORKDIR ##
RUN mkdir /datos1
WORKDIR /datos1
RUN touch f1.txt
RUN mkdir /datos2
WORKDIR /datos2
RUN touch f2.txt

## COPY ##
COPY index.html .
COPY app.log /datos1

## ADD ##
ADD docs docs
ADD f* /datos1/
ADD f.zip .

## ENV ##
ENV dir3=/datos3 dir4=/datos4
RUN mkdir $dir3
ENV TEXTO="Esto es un ejemplo de texto"

ADD lanzar.sh .
RUN chmod +x /datos2/lanzar.sh

## ARG ##
# ARG dir5
# RUN mkdir $dir5

# ARG user
# ENV user_docker $user
# ADD add_user.sh .
# RUN chmod +x /datos2/add_user.sh
# RUN /datos2/add_user.sh

## EXPOSE ##
RUN apt-get install -y apache2
EXPOSE 80
ADD entrypoint.sh /datos1/
RUN chmod +x /datos1/entrypoint.sh

## VOLUME ##
ADD paginas /var/www/html
VOLUME ["/var/www/html"]


## CMD & ENTRYPOINT ##
# Liga uma shell no arranque do contenedor
# CMD ["/bin/bash"]
# CMD echo $TEXTO
# CMD /datos2/lanzar.sh
CMD /datos1/entrypoint.sh

# Liga uma shell no arranque do contenedor de forma blindada (Que dizer que não pode ser executado algum comando adicional no momento de fazer `docker run`)
# ENTRYPOINT ["/bin/bash"]



