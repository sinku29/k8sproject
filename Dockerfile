FROM ubuntu:latest
RUN apt-get update && apt-get install apache2  zip  unzip  wget -y
WORKDIR /home/vagrant/
RUN wget https://www.tooplate.com/zip-templates/2131_wedding_lite.zip && unzip 2131_wedding_lite.zip
RUN rm -f 2131_wedding_lite.zip
RUN cp -R 2131_wedding_lite/* /var/www/html/
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]