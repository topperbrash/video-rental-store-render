# Use official PHP Apache image
FROM php:8.2-apache

# Install required PHP extensions and MySQL client
RUN apt-get update && apt-get install -y default-mysql-client && rm -rf /var/lib/apt/lists/*
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Copy application code
COPY index.php /var/www/html/
COPY video_rental_store_backup.sql /var/www/html/

# Copy wait script
COPY wait-for-db.sh /wait-for-db.sh
RUN chmod +x /wait-for-db.sh

# Expose port 80
EXPOSE 80

# Start the container with wait script
ENTRYPOINT ["/wait-for-db.sh"]
