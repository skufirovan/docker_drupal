FROM drupal:latest

WORKDIR /var/www/html

RUN apt-get update && apt-get install -y \
    vim \
    unzip \
    && rm -rf /var/lib/apt/lists/*

RUN chown -R www-data:www-data /var/www/html

ENV DRUPAL_DB_HOST=db \
    DRUPAL_DB_NAME=drupal \
    DRUPAL_DB_USER=drupal \
    DRUPAL_DB_PASSWORD=drupal

CMD ["apache2-foreground"]