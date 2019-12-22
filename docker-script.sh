#!/bin/bash

# Prepare job files
chmod 644 /etc/cron.d/*
crontab /etc/cron.d/*
touch /var/log/cron.log /etc/crontab /etc/cron.*/*

# Run cron daemon
echo "Starting cron"
cron

# Run whatever service
echo "Starting my service"
date
sleep 120
date

cat /var/log/cron.log
