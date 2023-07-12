FROM node:18-slim

RUN apt-get update -y && apt-get install -y openssl

WORKDIR /home/node/app

COPY package*.json ./
COPY prisma ./prisma/

# Copy environments from your .env file
COPY .env ./

COPY tsconfig.json ./
COPY . .

RUN npm install
RUN npx prisma generate

EXPOSE 4800

CMD ["npm", "start"]