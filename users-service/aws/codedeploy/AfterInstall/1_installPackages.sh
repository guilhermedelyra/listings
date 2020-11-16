#!/bin/sh
cd /opt/classifieds-full-app/users-service
mv .production.env .env
yarn
