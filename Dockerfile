FROM ruby:2.7.0

# Instalação de pacotes essenciais
RUN apt update && \
    apt upgrade -y && \
    apt install -y lsb-base lsb-release libpq-dev vim htop postgresql

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - && \
  apt-get install -y nodejs


# Instala a gem do PostgreSQL
RUN gem install pg

# Define o diretório de trabalho
WORKDIR /home/app/web

# Copia todos os arquivos do projeto para o contêiner
ADD . .

# Define permissões de execução para o script de configuração
RUN chmod +x /home/app/web/config/setup_app.sh

# Instala as dependências do bundler
RUN bundle install --jobs 5 --retry 5

RUN bundle exec rake assets:clobber && \
    bundle exec rails assets:precompile

    

# Define o ponto de entrada
ENTRYPOINT ["/bin/bash", "/home/app/web/config/setup_app.sh"]
