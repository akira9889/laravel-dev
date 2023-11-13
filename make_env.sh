#!/bin/bash
set -eu

cat << EOT > .env
#PHPの設定
WEB=80
DB=3306

DB_DATABASE=project
DB_USERNAME=phper
DB_PASSWORD=password
EOT
