# Use Python 3.10 Slim Buster
FROM python:3.10-slim-buster

# Update & Install Git in one step
RUN apt update && apt upgrade -y && apt install -y git

# Copy and install dependencies
COPY requirements.txt /requirements.txt
RUN pip install --upgrade pip && pip install --no-cache-dir -r /requirements.txt

# Set up working directory
WORKDIR /DQTheFileDonor
COPY start.sh /start.sh

# Start the bot
CMD ["/bin/bash", "/start.sh"]
