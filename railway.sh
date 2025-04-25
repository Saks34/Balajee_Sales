#!/bin/bash
# Set permissions
chmod -R 755 public
chmod -R 755 storage

# Generate application key if missing
[ -z "$APP_KEY" ] && php artisan key:generate

# Run migrations
php artisan migrate --force

# Start PHP server
php -S 0.0.0.0:$PORT -t public