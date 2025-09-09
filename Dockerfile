FROM ollama/ollama:latest

EXPOSE 11434

ENV MODEL_NAME=mistral

# Carpeta para modelos
RUN mkdir -p /root/.ollama/models

# Al arrancar: iniciar Ollama, esperar y descargar modelo
CMD ollama serve & \
    sleep 5 && \
    ollama pull ${MODEL_NAME} && \
    wait
