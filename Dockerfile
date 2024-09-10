#Use AST Base image
FROM checkmarx/ast-cli:2.2.3

USER nonroot

RUN WORKDIR /log
#Copy the entrypoint script and properties used for the action
COPY --chmod=555 entrypoint.sh /app/entrypoint.sh
COPY --chmod=555 cleanup.sh /app/cleanup.sh

RUN chmod +x /app/entrypoint.sh \
    && chmod +x /app/cleanup.sh
