FROM node:18-alpine
RUN mkdir -p /app
WORKDIR /app

COPY . .

RUN npm install

ARG NEXT_SHARP_PATH
ARG BACKEND_DOMAIN
ENV NEXT_PUBLIC_BACKEND_DOMAIN=${BACKEND_DOMAIN}

RUN npm run build

EXPOSE 3000
CMD ["npm", "start"]