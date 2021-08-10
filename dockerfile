FROM node:alpine
ENV NODE_ENV=production
WORKDIR /usr/src/app
COPY . .
RUN npm install --production
CMD ["node", "server.js"]
