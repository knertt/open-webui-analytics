FROM node:20-alpine

WORKDIR /app

# nur prod-Dependencies, reicht für den Server
COPY package*.json ./
RUN npm ci --omit=dev

COPY . .

RUN npm run build

EXPOSE 3001
CMD ["npm", "run", "server"]
