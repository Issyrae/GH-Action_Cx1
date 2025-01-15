# Use AST Base image
FROM checkmarx/ast-cli:2.3.10@sha256:7b670d5a96100feafbf4b00407f2452037ef9b634164b6454ba0de6973ae8816

# Docker actions must be run by the default Docker user (root).
USER root

# Copy the entrypoint script and properties used for the action
COPY entrypoint.sh /app/entrypoint.sh
COPY cleanup.sh /app/cleanup.sh

RUN chmod +x /app/entrypoint.sh \
    && chmod +x /app/cleanup.sh