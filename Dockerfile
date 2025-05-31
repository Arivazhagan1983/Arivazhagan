# Use official NGINX image
FROM nginx:alpine

# Set working directory
WORKDIR /usr/share/nginx/html

# Remove default static files
RUN rm -rf ./*

# Copy your static files into nginx html directory
COPY . .

# Expose port 8080
EXPOSE 8080

# Change nginx to listen on port 8080
RUN sed -i 's/80;/8080;/g' /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]
