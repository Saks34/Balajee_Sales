#!/bin/bash
# Set proper permissions
chmod -R 755 public
chmod -R 755 storage

# Create required links
php artisan storage:link

# Start the web server
vendor/bin/heroku-php-apache2 public/