FROM public.ecr.aws/docker/library/ruby:3.2

# Instalar dependencias del sistema
RUN apt-get update && apt-get install -y \
    curl \
    nodejs \
    npm \
    sqlite3 \
    libsqlite3-dev \
    && rm -rf /var/lib/apt/lists/*