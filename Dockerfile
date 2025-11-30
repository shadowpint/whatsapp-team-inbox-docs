# Build stage
FROM node:18-alpine AS builder

WORKDIR /app

# Install Mintlify
RUN npm install -g mintlify

# Copy documentation files
COPY . .

# Build documentation
RUN mintlify build

# Production stage
FROM nginx:alpine

# Copy built files from builder
COPY --from=builder /app/out /usr/share/nginx/html

# Copy nginx configuration
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
