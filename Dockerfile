# Imagem base
FROM python:3.10-slim

# Define diretório de trabalho dentro do container
WORKDIR /app

# Copia os arquivos para o container
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY main.py .

# Define a porta padrão do Cloud Run
ENV PORT=8080

# Comando para iniciar a aplicação Flask
CMD ["python", "model.py"]
