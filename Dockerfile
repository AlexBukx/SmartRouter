FROM ghcr.io/berriai/litellm:main-latest

# Copia il file di configurazione
COPY config.yaml /app/config.yaml

# Espone la porta 4000
EXPOSE 4000

# Avvia LiteLLM
CMD ["litellm", "--config", "/app/config.yaml", "--port", "4000"]