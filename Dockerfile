FROM node:current

ENV NODE_ENV=production

COPY ./main-website-backend /app/main-website-backend/
COPY ./main-website-frontend /app/main-website-frontend/

WORKDIR /app/main-website-backend/
RUN npm install

WORKDIR /app/main-website-frontend/
RUN npm install
RUN npm run build

WORKDIR /app/main-website-backend/
CMD ["node", "src/index.js"]
