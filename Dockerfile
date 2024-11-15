# Use AST Base image
FROM checkmarx/ast-cli:2.3.4@sha256:641e7c5f85d4d1265a8cb44c532c7d5236016aedc1fccdf51f4754b57f355ba2

# Docker actions must be run by the default Docker user (root).
USER root

# Copy the entrypoint script and properties used for the action
COPY entrypoint.sh /app/entrypoint.sh
COPY cleanup.sh /app/cleanup.sh

RUN chmod +x /app/entrypoint.sh \
    && chmod +x /app/cleanup.sh