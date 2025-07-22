 # taskmanager/app/main.py

from fastapi import FastAPI

# Cria uma instância da aplicação FastAPI
app = FastAPI(
    title="API de Gestão de Tarefas",
    description="Uma API RESTful para gerenciar tarefas de usuários.",
    version="0.1.0"
)

@app.get("/", summary="Verifica o status da API")
async def read_root():
    """
    Retorna uma mensagem de status para indicar que a API está ativa.
    """
    return {"message": "API de tarefas ativa"}
