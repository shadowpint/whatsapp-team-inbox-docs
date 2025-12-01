# Use Node 20 LTS (required by Mintlify)
FROM node:20-alpine

WORKDIR /app

# Install Mintlify globally
RUN npm install -g mintlify

# Copy all documentation files
COPY . .

# Expose port
EXPOSE 3000

# Start Mintlify dev server in production mode
CMD ["mintlify", "dev", "--host", "0.0.0.0", "--port", "3000"]
