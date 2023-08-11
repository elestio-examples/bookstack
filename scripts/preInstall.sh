set env vars
set -o allexport; source .env; set +o allexport;

mkdir -p ./web
chown -R 1001:1001 ./web