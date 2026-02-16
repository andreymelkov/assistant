#!/bin/bash

echo "Starting Ollama server..."
ollama serve &  # Start Ollama in the background

echo "Ollama is ready, creating the model..."

ollama run qwen2.5-coder:14b
# ollama create qwen2.5-coder-custom -f ./model_files/Modelfile