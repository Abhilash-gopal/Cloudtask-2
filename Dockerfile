# Use the official Ubuntu base image
FROM ubuntu:20.04

# Install NGINX
RUN apt-get update -y && \
    apt-get install -y nginx

# Copy custom index.html to replace default index.html
COPY ./app /var/www/html

# Start NGINX in the foreground
CMD ["nginx", "-g", "daemon off;"]

