#!/bin/sh
echo "--- STARTING SSH SERVICE ---"
set -e
service ssh start

echo "--- STARTING APACHE ---"
exec apache2-foreground