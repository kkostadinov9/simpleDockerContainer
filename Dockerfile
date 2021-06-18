From ubuntu:20.04
ENV TZ=Europe/Sofia
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update
RUN apt-get install -y apache2
ENTRYPOINT ["apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80
RUN cp html/index.html /var/www/html