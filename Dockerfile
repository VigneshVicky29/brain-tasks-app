# Use official Nginx image
FROM 337909774524.dkr.ecr.us-west-2.amazonaws.com/nginx:stable-alpine

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

