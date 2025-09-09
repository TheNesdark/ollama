FROM ollama/ollama:latest
EXPOSE 11434
ENV MODEL_NAME=phi
ENTRYPOINT ["/bin/sh", "-c"]
CMD ["ollama serve & sleep 5 && ollama pull ${MODEL_NAME} && wait"]
