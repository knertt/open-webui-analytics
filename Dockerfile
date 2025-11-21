FROM node:20-alpine

WORKDIR /app

# 1. Dependencies installieren (inkl. devDependencies, damit vite verfügbar ist)
COPY package*.json ./
RUN npm install

# 2. Source-Code kopieren
COPY . .

# 3. Build ausführen (nutzt vite)
RUN npm run build

# 4. Port & Startkommando
EXPOSE 3001
CMD ["npm", "run", "server"]
