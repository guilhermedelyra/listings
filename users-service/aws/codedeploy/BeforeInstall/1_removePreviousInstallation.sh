#!/bin/sh

deployment_dir=/opt/classifieds-full-app/users-service
if [ -d "$deployment_dir" ] && [ -x "$deployment_dir" ]; then
  rm -rf $deployment_dir
fi