# Use official Nginx image
FROM nginx:stable-alpine

# Remove default Nginx files
RUN rm -rf /usr/share/nginx/html/*

# Copy pre-built app from dist folder
COPY dist/ /usr/share/nginx/html

# Copy Nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 3000
EXPOSE 3000

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

