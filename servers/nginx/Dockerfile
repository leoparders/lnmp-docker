FROM nginx:1.15.7
LABEL maintainer="Leopard02 <xianbotan@icloud.com>"

VOLUME /timezone

RUN rm -rfv /etc/localtime
RUN ln -sf /usr/share/zoneinfo/Etc/UTC /timezone/localtime
RUN ln -s /timezone/localtime /etc/localtime

COPY ./conf/ /etc/nginx/
RUN apt-get update -y \
  && apt-get install -y  \
  cron\
  openssl \
  coreutils \
  curl \
  socat
RUN curl https://get.acme.sh | sh

