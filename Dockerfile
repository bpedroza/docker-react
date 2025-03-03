FROM node:20-alpine AS builder

WORKDIR /usr/app
COPY ./package.json .
RUN npm install
COPY . .
RUN npm run build

FROM nginx
# Required for AWS to expose the port. Does nothing locally.
EXPOSE 80
COPY --from=builder /usr/app/dist /usr/share/nginx/html