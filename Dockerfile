#Use AST Base image
FROM checkmarx/dev-tests:latest

WORKDIR /app

USER root
RUN mkdir -p /github/file_commands && chown -R 65532:65532 /github/ && chmod -R 777 /github/

# Copy the entrypoint script and properties used for the action
COPY --chmod=555 entrypoint.sh /app/entrypoint.sh
COPY --chmod=555 cleanup.sh /app/cleanup.sh

USER 65532