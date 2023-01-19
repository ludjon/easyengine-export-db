## export db

cd /opt/easyengine/services && docker-compose exec global-db bash -c '/usr/bin/mysqldump -u root --password=${MYSQL_ROOT_PASSWORD} SITE_DB > /backup.sql'

## cp backup file to main system

docker cp $(docker-compose ps -q global-db):/backup.sql /backup.sql
