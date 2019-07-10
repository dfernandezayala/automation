#!/usr/bin/env bash

#update Blob Strage
az storage metrics update --retention 0 --services b --account-name $storageAccount

if [ "$environment" == "production" ];
then
	az storage logging update --account-name $storageAccount --version 2.0 --log wd --retention 365 --services b 
else
	az storage logging update --account-name $storageAccount --version 2.0 --log wd --retention 180 --services b 
fi