# Imagen base oficial de Ollama
FROM ollama/ollama:latest

# Puerto por defecto de Ollama
EXPOSE 11434

# Variable de entorno para elegir el modelo
# Puedes cambiar "mistral" por otro modelo soportado
ENV MODEL_NAME=mistral

# Crear carpeta de modelos
RUN mkdir -p /root/.ollama/models

# Descargar el modelo en la construcción de la imagen
RUN ollama pull ${MODEL_NAME}

# Comando para iniciar Ollama
CMD ["ollama", "serve"]
