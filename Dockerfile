FROM ghcr.io/berriai/litellm:v1.44.27-stable

WORKDIR /app

COPY config.yaml /app/config.yaml

ENV PORT=4000

EXPOSE 4000

CMD ["litellm", "--config", "/app/config.yaml", "--port", "4000", "--host", "0.0.0.0"]