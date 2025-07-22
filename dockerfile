# taskmanager/Dockerfile

# Usa uma imagem base oficial do Python
FROM python:3.10-slim-buster

# Define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copia o arquivo de requisitos e instala as dependências
COPY ./requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r /app/requirements.txt

# Copia todo o código da aplicação para o diretório de trabalho
COPY ./app /app/app

# Expõe a porta em que a aplicação será executada
EXPOSE 8000

# Comando para iniciar a aplicação Uvicorn
# O --host 0.0.0.0 permite que a aplicação seja acessível de fora do contêiner
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]

