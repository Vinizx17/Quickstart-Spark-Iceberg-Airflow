#!/bin/bash
# Entrypoint customizado para setup do airflow

airflow db migrate

# Cria usuário apenas se não existir
airflow users list | grep -q "${AIRFLOW_ADMIN_USER}"
if [ $? -ne 0 ]; then
  airflow users create \
    --username "${AIRFLOW_ADMIN_USER}" \
    --password "${AIRFLOW_ADMIN_PASSWORD}" \
    --firstname "${AIRFLOW_ADMIN_FIRSTNAME}" \
    --lastname "${AIRFLOW_ADMIN_LASTNAME}" \
    --role Admin \
    --email "${AIRFLOW_ADMIN_EMAIL}"
fi

exec airflow webserver