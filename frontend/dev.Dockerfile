FROM node:16-alpine
RUN apk add --no-cache libc6-compat
WORKDIR /app
COPY package.json yarn.lock ./
RUN yarn install
COPY . .
EXPOSE 3000

CMD ["/app/node_modules/.bin/next", "dev"]