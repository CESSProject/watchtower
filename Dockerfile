FROM alpine

EXPOSE 8080

RUN apk add --no-cache libc6-compat ca-certificates tzdata
COPY watchtower /watchtower

HEALTHCHECK CMD [ "/watchtower", "--health-check"]

ENTRYPOINT ["/watchtower"]
