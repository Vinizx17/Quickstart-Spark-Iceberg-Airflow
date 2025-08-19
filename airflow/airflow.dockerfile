FROM apache/airflow:2.10.0-python3.10

# Troca para root temporariamente para instalar pacotes
USER root

# Atualiza o apt e instala Java 17 (compatível com Spark) e wget
RUN apt-get update && \
    apt-get install -y openjdk-17-jdk wget && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Define o JAVA_HOME
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
ENV PATH=$JAVA_HOME/bin:$PATH

# Volta para o usuário airflow
USER airflow

# Copia e instala os providers do requirements.txt
COPY requirements.txt /requirements.txt
RUN pip install --no-cache-dir -r /requirements.txt

