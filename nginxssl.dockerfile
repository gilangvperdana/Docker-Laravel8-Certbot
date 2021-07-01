FROM gilangvperdana/ssl:nginx

ADD ./nginx/nginx.conf /etc/nginx/
ADD ./nginx/default.conf /etc/nginx/conf.d/

RUN useradd laravel

RUN chown laravel:laravel /var/www/html/
