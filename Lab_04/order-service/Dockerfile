FROM node:20-alpine
WORKDIR /app
COPY . .
RUN npm install --omit=dev || true
EXPOSE 3002
CMD ["node", "index.js"]
