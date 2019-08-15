FROM node:12
RUN curl -sSL https://sdk.cloud.google.com | bash
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
