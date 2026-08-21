FROM ghcr.io/berriai/litellm:main-latest
EXPOSE 4000
CMD ["litellm", "--config", "/app/config.yaml", "--port", "4000"]
