FROM alpine:latest

RUN apk add --no-cache apache2

EXPOSE 80/tcp

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND", "-f", "/etc/apache2/httpd.conf"]