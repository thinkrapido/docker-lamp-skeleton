FROM lamp

# setup apache
ENV APACHE_LOG_DIR /var/www/logs

ADD . /build
RUN cp /build/config/vhost.conf /etc/apache2/sites-available/
RUN a2ensite vhost

# load-db-fixture
WORKDIR /build/bin
RUN ./load-db-fixture.sh

VOLUME /var/www

EXPOSE 80

CMD ["/sbin/my_init"]