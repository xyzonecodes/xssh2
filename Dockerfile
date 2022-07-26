FROM devisty/xssh:v2
EXPOSE 80
EXPOSE 81

RUN set -ex\
    && apt update -y \
    && apt upgrade -y \
    && apt install -y wget htop unzip qrencode\
    && apt autoremove -y
COPY . /app
COPY  . /usr/share/nginx/html
RUN chmod +x /app/start.sh
CMD ["/app/start.sh"]
