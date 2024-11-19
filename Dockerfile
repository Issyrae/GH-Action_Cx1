# Use AST Base image
FROM checkmarx/ast-cli:2.3.5@sha256:83bc2220e30f79efea46270b4c8c60ae938e86d2ebfd758d05e6c9db9a2ce1bc

# Docker actions must be run by the default Docker user (root).
USER root

# Copy the entrypoint script and properties used for the action
COPY entrypoint.sh /app/entrypoint.sh
COPY cleanup.sh /app/cleanup.sh

RUN chmod +x /app/entrypoint.sh \
    && chmod +x /app/cleanup.sh