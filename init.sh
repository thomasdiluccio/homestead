#!/usr/bin/env bash

homesteadRoot=~/.homestead

mkdir -p "$homesteadRoot"

cp -i vendor/laravel/homestead/src/stubs/Homestead.yaml "$homesteadRoot/Homestead.yaml"
cp -i scripts/after.sh "$homesteadRoot/after.sh"
cp -i vendor/laravel/homestead/src/stubs/aliases "$homesteadRoot/aliases"

cat <<EOT >> "$homesteadRoot/Homestead.yaml"

ports:
     - send: 3000
       to: 3000
     - send: 27017
       to: 27017
EOT

echo "Homestead initialized!"
