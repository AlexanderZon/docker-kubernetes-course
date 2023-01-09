FROM ubuntu:18.04

RUN apt-get update

ADD init.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/init.sh

RUN apt-get update
RUN apt-get remove docker docker-engine docker.io containerd runc
RUN apt-get update

RUN apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release -y

RUN mkdir -p /etc/apt/keyrings
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg

RUN echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null

RUN apt-get update

RUN apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y

RUN apt-get install httpd -y

EXPOSE 80

CMD ["/sbin/init"]
