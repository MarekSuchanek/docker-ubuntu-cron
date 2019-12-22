FROM ubuntu:16.04

# Install
RUN apt-get update && apt-get -qq -y install cron curl


# Cron
ADD crontab /etc/cron.d/custom

ADD docker-script.sh ./run.sh

# Dummy command to give some time to cron jobs
CMD ["bash", "./run.sh"]
