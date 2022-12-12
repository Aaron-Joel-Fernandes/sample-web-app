FROM ubuntu:22.04
RUN apt-get upgrade -y
RUN apt update -y
RUN apt install nodejs npm -y
RUN apt-get install curl -y
RUN curl curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash 
WORKDIR /app
COPY ./package.json .
RUN npm install
COPY . .
RUN npm run build
CMD ["npm","run","start"]

