# Use AST Base image
FROM checkmarx/ast-cli:2.3.2@sha256:f9f5ffa438e5a8c5859f60105e450313e03f7c70f7968d6cf2f272ac4dc59a09

# Docker actions must be run by the default Docker user (root).
USER root

# Copy the entrypoint script and properties used for the action
COPY entrypoint.sh /app/entrypoint.sh
COPY cleanup.sh /app/cleanup.sh

RUN chmod +x /app/entrypoint.sh \
    && chmod +x /app/cleanup.sh