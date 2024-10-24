#set env vars
set -o allexport; source .env; set +o allexport;

echo "Waiting for bookstack to be ready ...";
sleep 20s;

#Create admin user
docker-compose exec -T db mysql -u root -p${MYSQL_ROOT_PASSWORD} bookstackapp -e "DELETE FROM users WHERE id='1';"
docker-compose exec -T bookstack /bin/sh -c 'php /app/www/artisan bookstack:create-admin --email="'"${ADMIN_EMAIL}"'" --name="Admin" --password="'"${ADMIN_PASSWORD}"'"'
