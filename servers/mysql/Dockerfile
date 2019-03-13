FROM mysql:5.7.21
LABEL maintainer="Leopard02 <xianbotan@icloud.com>"
VOLUME /timezone

RUN rm -rfv /etc/localtime
RUN ln -sf /usr/share/zoneinfo/Etc/UTC /timezone/localtime
RUN ln -s /timezone/localtime /etc/localtime