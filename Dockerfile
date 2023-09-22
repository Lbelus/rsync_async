# Use the lightweight Alpine Linux image
FROM alpine:latest

# Install rsync and bash
RUN apk add --no-cache rsync bash

# Create directories
RUN mkdir -p /share
RUN mkdir -p /host

# Copy the provided bash script into the container
COPY rsync_script.sh /usr/local/bin/rsync_script.sh
RUN chmod +x /usr/local/bin/rsync_script.sh

# Set the working directory
WORKDIR /usr/local/bin

# Run the script in a time loop
CMD while true; do ./rsync_script.sh && sleep 1; done
