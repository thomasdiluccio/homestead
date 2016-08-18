# An extended version of Laravel Homestead

You should check the [Official documentation](http://laravel.com/docs/homestead) of Laravel official local development environment.

## What's for *Homestead Extended* ?

This project extends [`Laravel/Homestead`](http://github.com/laravel/homestead). So, you can run a `composer update` to update `Laravel/Homestead` to the last published version.

As of `v1.0`, this package adds MongoDB using zakaria benbakkar's [`zakhttp/Mongostead7`](https://github.com/zakhttp/Mongostead7)

## Requirements

You need [VirtualBox](http://virtualbox.org) and [Vagrant](http://vagrantup.com).

## Setup

#### Installing The Homestead Vagrant Box
`vagrant box add laravel/homestead`

#### Installing Homestead
`cd ~ && git clone https://github.com/thomasdiluccio/homestead.git Homestead`

`cd Homestead && composer install`


#### Run initilization script
`bash init.sh`

#### Check your config file
`vi ~/.homestead/Homestead.yaml`

#### Boot up the server
`vagrant up`
