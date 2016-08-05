@echo off

set homesteadRoot=%HOMEDRIVE%%HOMEPATH%\.homestead

mkdir "%homesteadRoot%"

copy /-y vendor\laravel\homestead\src\stubs\Homestead.yaml "%homesteadRoot%\Homestead.yaml"
copy /-y scripts\after.sh "%homesteadRoot%\after.sh"
copy /-y vendor\laravel\homestead\src\stubs\aliases "%homesteadRoot%\aliases"

set homesteadRoot=
echo Homestead initialized!
