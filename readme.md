# Ambiente Analítico com Spark, Trino, Iceberg, Airflow e MinIO

Este repositório contém um ambiente de dados completo usando Docker Compose, composto por:

- **Apache Spark: Processamento de dados.
- **Trino: Query engine SQL.
- **Apache Iceberg: Formato de tabela para análise de dados.
- **Apache Airflow: Orquestração de DAGs e execução de jobs.
- **MinIO: Armazenamento de objetos S3 compatível para dados.
- **Postgres: Banco de metadados do Apache Airlow

## Pré-requisitos

- Docker
- Docker Compose >= 2.0
- Jetbrains Toolbox
- Pycharm Community 25.2.0.1

## Subindo o ambiente

1. Clone o repositório:

git clone 
cd seu-repo
Configure as variáveis de ambiente no arquivo .env:

Copiando do .env.example

Rodar o comando via PowerShell: "docker-compose up build -d


URL das aplicações:
Airflow Webserver: http://localhost:8080
MinIO Console: http://localhost:9000
Trino: http://localhost:8081 (dependendo da configuração)
Spark UI: http://localhost:4040

Disclaimer
O Airflow utilizará o Postgres como backend.
O Spark está configurado em modo client local.
O MinIO será usado como storage para dados do Iceberg ou qualquer outro bucket necessário.
Os DAGs podem ser monitorados via Airflow e os logs ficarão em airflow/logs/.
Certifique-se de ajustar recursos de CPU/memória para Spark se estiver usando máquina com pouca RAM.
O ambiente é somente para desenvolvimento, não replicar em produção