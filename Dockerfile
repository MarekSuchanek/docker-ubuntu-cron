FROM ubuntu:16.04

# Install
RUN apt-get update && apt-get -qq -y install cron


# Cron
ADD crontab /etc/cron.d/custom
RUN chmod 644 /etc/cron.d/custom
RUN service cron start

# Dummy command to give some time to cron jobs
CMD ["sleep", "300"]
