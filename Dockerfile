# Use AST Base image
FROM checkmarx/ast-cli:2.3.1@sha256:311fa395afa9890eef986c60d6dbcfca1d26821eb3101bbddf8938bcf60f9292

# Docker actions must be run by the default Docker user (root).
USER root

# Copy the entrypoint script and properties used for the action
COPY entrypoint.sh /app/entrypoint.sh
COPY cleanup.sh /app/cleanup.sh

RUN chmod +x /app/entrypoint.sh \
    && chmod +x /app/cleanup.sh