#!/bin/sh

IP=$(curl -s ifconfig.me)

echo "window.API_ENDPOINT=\"http://${IP}:8080/api/tasks\";" > /usr/share/nginx/html/env.js

exec nginx -g "daemon off;"
