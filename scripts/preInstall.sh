set env vars
set -o allexport; source .env; set +o allexport;

mkdir -p ./
mkdir -p ./init.db
mkdir -p ./db
mkdir -p ./php/conf.d/xdebug.ini

chown -R 1001:1001 ./
chown -R 1001:1001 ./init.db
chown -R 1001:1001 ./db
chown -R 1001:1001 ./php/conf.d/xdebug.ini

APP_KEY=$(docker run -it --rm --entrypoint /bin/bash lscr.io/linuxserver/bookstack:latest appkey)

cat << EOT >> ./.env
APP_KEY=${APP_KEY}
EOT
