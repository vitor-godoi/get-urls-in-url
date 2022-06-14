#!/bin/bash

echo ----------------------------------
echo ---Get URLs in URL------------------
echo ------0.0.1 v ---------------------

sleep 1

echo Select the url to analyse/ ex: https://website.com/ :
read DOMAIN

curl -L -k $DOMAIN| sed 's/href=/\nhref=/g' |grep href=\" | sed 's/.*href='//g;s/"./*//g'