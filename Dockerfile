FROM ubuntu
WORKDIR v2ray
COPY . /tmp/
RUN apt-get update && apt install -y gcc git make curl wget && \
    cd /tmp/ && \
    chmod a+x /tmp/ss_pwd_config.sh &&\
    cp ./v2ray-linux-64.zip /root/ &&\ 
    chmod a+x go.sh &&\
    ./go.sh && \
    cp /tmp/config.json /etc/v2ray/ 
ENTRYPOINT ["bash", "/tmp/ss_pwd_config.sh"]
EXPOSE 443
