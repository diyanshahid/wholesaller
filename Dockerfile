FROM ubuntu/apache2
WORKDIR /app
RUN mkdir /app/data
RUN chmod 755 /app/data
COPY . /var/www/html
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]
