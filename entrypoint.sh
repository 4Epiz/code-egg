#!/bin/bash
set -e

if [ -z "$PASSWORD" ]; then
    echo "Error: PASSWORD environment variable is not set."
    exit 1
fi

USER_DATA_DIR="/home/container/.config/code-server"

mkdir -p "$USER_DATA_DIR"

cat <<EOF > "$USER_DATA_DIR/config.yaml"
bind-addr: 0.0.0.0:${SERVER_PORT}
auth: password
password: ${PASSWORD}
cert: false
EOF

exec code-server --user-data-dir /home/container --extensions-dir /home/container/extensions
