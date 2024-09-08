# Dockerfile
FROM postgres:15

# schema.sql para o diretorio
COPY schema.sql /docker-entrypoint-initdb.d/