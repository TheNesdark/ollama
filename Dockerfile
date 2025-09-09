FROM ollama/ollama:latest
EXPOSE 11434
ENV MODEL_NAME=gemma:2b
ENTRYPOINT ["/bin/sh", "-c"]
CMD ["ollama serve & sleep 5 && ollama pull ${MODEL_NAME} && wait"]
