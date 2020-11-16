#!/bin/sh
cd /opt/classifieds-full-app/listings-service
mv .production.env .env
yarn
