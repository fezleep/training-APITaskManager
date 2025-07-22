Projeto: API de Gestão de Tarefas (Task Manager)
Este repositório apresenta a estrutura inicial de uma API RESTful para gerenciamento de tarefas, desenvolvida com FastAPI e Docker. O projeto visa o estudo e será expandido com novas funcionalidades.



Dia 1 – Tarefa: Estrutura Inicial do Projeto
Objetivo da Tarefa
Configurar uma base sólida e escalável para o projeto, utilizando FastAPI e Docker de forma profissional.



Especificações da Tarefa
O projeto foi iniciado com as seguintes tecnologias e organização de diretórios:

FastAPI: Framework web Python para construção de APIs de alto desempenho.
Uvicorn: Servidor ASGI para execução de aplicações Python assíncronas.
Pydantic: Para validação e serialização de dados.
Python-dotenv: Para gerenciamento de variáveis de ambiente.
Httpx: Biblioteca cliente HTTP para testes futuros.
Dockerfile: Configuração para construção da imagem Docker da aplicação.
docker-compose.yml: Orquestração da aplicação FastAPI e PostgreSQL em contêineres.




Entregáveis da Tarefa:
API configurada com Uvicorn e FastAPI em contêiner Docker.
Rota inicial GET / retornando: {"message": "API de tarefas ativa"}.
Configuração completa para inicialização via docker compose up.
Teste de Verificação
Para confirmar o funcionamento da API (após iniciar os contêineres):
curl http://localhost:8000/
Resposta esperada:

{"message": "API de tarefas ativa"}


======================================================================================================================


Aprendizados e Resolução de Problemas
A configuração inicial trouxe desafios comuns de Docker e Git, que se tornaram importantes oportunidades de aprendizado:

1. Comando docker-compose vs docker compose
Problema: Erro unknown flag: --build ao usar docker-compose up --build.

Causa: Em versões recentes do Docker Desktop, docker-compose foi integrado como subcomando do docker.
Aprendizado: A importância de acompanhar as atualizações de sintaxe das ferramentas. A solução foi usar docker compose up --build.

2. Diferença entre Branches main e master no Git
Problema: Erro error: src refspec main does not match any ao tentar git push -u origin main.
Causa: O branch local era master, enquanto o comando tentava enviar para main (novo padrão do GitHub).
Aprendizado: A necessidade de verificar o nome do branch local (git branch). A solução foi usar git push -u origin master.
A superação desses desafios reforçou a importância da análise de erros e da compreensão dos fundamentos das ferramentas, contribuindo para o avanço no aprendizado.

======================================================================================================================


Próximas Etapas
Após a conclusão e verificação desta tarefa, o projeto avançará para o Dia 2: CRUD de tarefas com banco de dados.