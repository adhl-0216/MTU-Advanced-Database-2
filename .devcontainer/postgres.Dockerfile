FROM postgres:latest
RUN echo "CREATE EXTENSION IF NOT EXISTS cube;" > /docker-entrypoint-initdb.d/init-cube.sql
