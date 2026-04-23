# Stage 1: Build
FROM node:20-alpine AS builder
WORKDIR /app
COPY src-app/package*.json ./
RUN npm install
COPY src-app/ .
RUN npm run build

# Stage 2: Serve
FROM nginx:alpine
COPY --from=builder /app/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
