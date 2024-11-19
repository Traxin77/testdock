FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    curl \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

    COPY test-script.sh /usr/local/bin/test-script.sh

RUN chmod +x /usr/local/bin/test-script.sh && sh /usr/local/bin/test-script.sh

ENTRYPOINT ["/bin/bash"]
