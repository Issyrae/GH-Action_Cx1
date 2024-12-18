# Use AST Base image
FROM checkmarx/ast-cli:2.3.7@sha256:f30b114d400aa4fd953b54c18dca2548f5f1334e90554dcab8fa818c03ecfaf5

# Docker actions must be run by the default Docker user (root).
USER root

# Copy the entrypoint script and properties used for the action
COPY entrypoint.sh /app/entrypoint.sh
COPY cleanup.sh /app/cleanup.sh

RUN chmod +x /app/entrypoint.sh \
    && chmod +x /app/cleanup.sh