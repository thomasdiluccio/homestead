#!/usr/bin/env bash

homesteadRoot=~/.homestead

mkdir -p "$homesteadRoot"

cp -i vendor/laravel/homestead/src/stubs/Homestead.yaml "$homesteadRoot/Homestead.yaml"
cp -i scripts/after.sh "$homesteadRoot/after.sh"
cp -i vendor/laravel/homestead/src/stubs/aliases "$homesteadRoot/aliases"

echo "Homestead initialized!"
