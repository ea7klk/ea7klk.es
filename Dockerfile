# Build stage
FROM debian:bullseye-slim AS builder

# Install required packages
RUN apt-get update && apt-get install -y \
    curl \
    git \
    && rm -rf /var/lib/apt/lists/*

# Install Hugo
RUN curl -L https://github.com/gohugoio/hugo/releases/download/v0.142.0/hugo_0.142.0_linux-amd64.deb -o hugo.deb \
    && dpkg -i hugo.deb \
    && rm hugo.deb

# Set working directory
WORKDIR /src

# Copy source files
COPY . .

# Build the static site
RUN hugo --minify

# Final stage
FROM nginx:alpine

# Copy the built static site from builder
COPY --from=builder /src/public /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]