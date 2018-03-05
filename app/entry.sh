#!/bin/sh

cd /app/dashboard
ln -s /run/secrets/mozaik-env .env
npm start
