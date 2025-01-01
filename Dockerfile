# Use AST Base image
FROM checkmarx/ast-cli:2.3.9@sha256:d03fa1e64172670733951eabb6bc755443fedd3fbbfbd10a4a2f58f35e64d360

# Docker actions must be run by the default Docker user (root).
USER root

# Copy the entrypoint script and properties used for the action
COPY entrypoint.sh /app/entrypoint.sh
COPY cleanup.sh /app/cleanup.sh

RUN chmod +x /app/entrypoint.sh \
    && chmod +x /app/cleanup.sh