FROM node:lts-slim
COPY package.json package-lock.json* ./
WORKDIR /home/node/app
COPY . /home/node/app
RUN <<EOF
npm install
EOF
EXPOSE 3000
COPY . /home/node/app

CMD ["npm", "start"]
