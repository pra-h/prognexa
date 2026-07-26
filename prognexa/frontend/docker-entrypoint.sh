#!/bin/sh
set -e

# Replace the placeholder with the actual backend URL
if [ -z "$API_BASE" ]; then
    export API_BASE="http://backend:8000"
fi

envsubst '${API_BASE}' < /usr/share/nginx/html/index.html.template > /usr/share/nginx/html/index.html

exec "$@"