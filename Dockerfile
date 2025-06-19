# Use the official PHP image with Apache
FROM php:8.2-apache

# Set working directory
WORKDIR /var/www/html

# Copy all files from the current directory to the Apache web root
COPY . /var/www/html/

# Set recommended PHP settings for Adminer (optional)
RUN echo "upload_max_filesize=100M\npost_max_size=100M" > /usr/local/etc/php/conf.d/uploads.ini

# Expose port 80 (default for Apache)
EXPOSE 80

# The default command will run Apache in the foreground (from the base image)0
