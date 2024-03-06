# Start docker compose
docker compose up -d

# Navigate to forwarded port and plugin drupal setup info

# Exec into drupal container and copy /opt/drupal to local src directory

# run mysql dump to get database dump
docker exec -i drupal-example-repo-mysql-1 mysqldump -uroot -ppass1234 drupal > db_dump.sql