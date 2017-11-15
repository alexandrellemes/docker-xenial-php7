#!/bin/bash

docker build -t "xenial/php7:lastest" .

docker run -it -p 80:80 --network=host --privileged -v $HOME/discoDocker/apache/projetos/:/var/www/html/ -v $HOME/discoDocker/apache/conf/:/etc/apache2/sites-available -v /tmp:/tmp --name apache -d xenial/php7:latest
