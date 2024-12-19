# Use AST Base image
FROM checkmarx/ast-cli:2.3.8@sha256:9dfedcb55e75045ce03514185ef8586f2f4bea8d26ae531fffebf3a8e5621f99

# Docker actions must be run by the default Docker user (root).
USER root

# Copy the entrypoint script and properties used for the action
COPY entrypoint.sh /app/entrypoint.sh
COPY cleanup.sh /app/cleanup.sh

RUN chmod +x /app/entrypoint.sh \
    && chmod +x /app/cleanup.sh