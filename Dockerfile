FROM ollama/ollama:latest
EXPOSE 11434
ENTRYPOINT ["/bin/sh", "-c"]
CMD ["ollama serve & sleep 5 && ollama pull mistral && wait"]
