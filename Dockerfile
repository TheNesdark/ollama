FROM ollama/ollama:latest

EXPOSE 11434

# Carpeta de modelos
RUN mkdir -p /root/.ollama/models

# Inicia el servidor de Ollama
CMD ["ollama", "serve"]
