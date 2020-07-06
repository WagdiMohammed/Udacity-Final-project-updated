FROM nginx

## Step 1:
# Create a working directory
## Step 2:
# Copy source code to working directory
COPY  index.html  /var/www/html/
COPY index.html   /usr/share/nginx/html
## Step 4:
# Expose port 80
EXPOSE 80


## Step 5:
# Run app.py at container launch

#CMD ["nginx", "-s reload"]