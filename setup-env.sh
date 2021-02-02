#!/bin/bash

# Establishes environmental variables for the project, overwrites current .env files

# Check if config file exists and can be called
if [ -e ./config.ini ]; then
  
  #Load user config
  
  . ./config.ini
  
  # Prepare InfluxDB and Worker .env files

  echo "INFLUXDB_TOKEN=$in_token" | tee ./influxdb/.env ./worker/.env
  echo "INFLUXDB_ORG=$in_org" | tee -a ./worker/.env ./influxdb/.env
  echo "INFLUXDB_BUCKET=$in_bucket" | tee -a ./worker/.env  ./influxdb/.env
  echo "INFLUXDB_USERNAME=$in_username" | tee -a ./influxdb/.env
  echo "INFLUXDB_PASSWORD=$in_password" | tee -a ./influxdb/.env

  # Grafana

  echo "GF_SECURITY_ADMIN_USER=$gr_username" | tee ./grafana/.env
  echo "GF_SECURITY_ADMIN_PASSWORD=$gr_password" | tee -a ./grafana/.env

else
  echo "Config file does not exist"
fi


