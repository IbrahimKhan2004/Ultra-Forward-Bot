# Base image
FROM python:3.8-slim-buster

# Set the working directory
WORKDIR /fwdbot

# Update apt repositories to use the Debian archive
RUN echo "deb http://archive.debian.org/debian/ buster main" > /etc/apt/sources.list && \
    echo "deb http://archive.debian.org/debian-security buster/updates main" >> /etc/apt/sources.list && \
    echo "deb http://archive.debian.org/debian/ buster-updates main" >> /etc/apt/sources.list

# Install system dependencies
RUN apt-get update && \
    apt-get install -y --no-install-recommends git && \
    rm -rf /var/lib/apt/lists/*

# Copy requirements and install Python dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -U pip && \
    pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Make the start script executable
RUN chmod +x /fwdbot/start.sh

# Set the entrypoint
CMD ["/bin/bash", "/fwdbot/start.sh"]
