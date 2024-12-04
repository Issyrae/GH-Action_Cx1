# Use AST Base image
FROM checkmarx/ast-cli:2.3.6@sha256:72b5c9247cd62b78204286e89539f9626d3bc8378dd5a223e4e5bf9dbd1f1c35

# Docker actions must be run by the default Docker user (root).
USER root

# Copy the entrypoint script and properties used for the action
COPY entrypoint.sh /app/entrypoint.sh
COPY cleanup.sh /app/cleanup.sh

RUN chmod +x /app/entrypoint.sh \
    && chmod +x /app/cleanup.sh