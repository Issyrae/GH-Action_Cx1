# Use AST Base image
FROM checkmarx/ast-cli:2.3.3@sha256:655078a3c0913d661a52032cd55682676f6c84813ee595dc4be0321a8ea00ad0

# Docker actions must be run by the default Docker user (root).
USER root

# Copy the entrypoint script and properties used for the action
COPY entrypoint.sh /app/entrypoint.sh
COPY cleanup.sh /app/cleanup.sh

RUN chmod +x /app/entrypoint.sh \
    && chmod +x /app/cleanup.sh