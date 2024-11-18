# Start from a lightweight base image
FROM ubuntu:20.04

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive

# Update and install packages
RUN apt-get update && apt-get install -y \
    curl \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Copy a test script to the container
COPY test-script.sh /usr/local/bin/test-script.sh

# Make the script executable
RUN chmod +x /usr/local/bin/test-script.sh

# Set the entrypoint to the test script
ENTRYPOINT ["/usr/local/bin/test-script.sh"]
