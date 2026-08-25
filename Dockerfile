# Usa un'immagine stabile specifica che sappiamo funzionare su Railway
# La versione 1.72.6-stable è stata segnalata come funzionante per il deploy dell'UI
FROM ghcr.io/berriai/litellm:v1.72.6-stable

WORKDIR /app

COPY config.yaml /app/config.yaml

EXPOSE 4000

CMD ["litellm", "--config", "/app/config.yaml", "--port", "4000", "--host", "0.0.0.0"]