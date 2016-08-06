#!/usr/bin/env bash

echo "Copying Vagrantfile";
cp vendor/laravel/homestead/Vagrantfile ./;
echo "require File.expand_path(File.dirname(__FILE__) + '/scripts/mongodb-forwarding-ports.rb')" >> ./Vagrantfile

echo "Copying Scripts";
cp vendor/laravel/homestead/scripts/* ./scripts/;
