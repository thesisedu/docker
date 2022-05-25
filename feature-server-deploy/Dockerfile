FROM circleci/node:16-bullseye

WORKDIR /tmp
RUN curl -sSL "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"; \
  unzip -q -o awscliv2.zip; \
  sudo ./aws/install; \
  rm -rf awscli*

WORKDIR /tmp
RUN curl -sS https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -; \
  echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main" | sudo tee /etc/apt/sources.list.d/pgdg.list; \
  sudo apt-get update; \
  sudo apt-get install -y postgresql-client-11

WORKDIR /usr/bin
RUN curl -sL https://github.com/digitalocean/doctl/releases/download/v1.65.0/doctl-1.65.0-linux-amd64.tar.gz | sudo tar -xzv

WORKDIR /tmp
RUN wget https://releases.hashicorp.com/terraform/1.0.9/terraform_1.0.9_linux_amd64.zip; \
  unzip terraform_1.0.9_linux_amd64.zip; \
  sudo mv terraform /usr/bin; \
  rm -rf terraform*

RUN sudo corepack enable
RUN sudo corepack prepare pnpm@6.32.13 --activate

RUN sudo apt-get update -y
RUN sudo apt-get install -y python3
RUN python3 --version
