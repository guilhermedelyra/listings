#!/bin/sh
cd /opt/classifieds-full-app/api-gateway
mv .production.env .env
yarn
