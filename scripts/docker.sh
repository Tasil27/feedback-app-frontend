# Build the frontend app container
docker build \
    -t feedback-app-frontend:v2.0 \
    -t feedback-app-frontend:latest \
    -t tasil/feedback-app-frontend:v2.0 \
    -t taail/feedback-app-frontend:latest .

# Push the images to Docker Hub
docker push tasil/feedback-app-frontend:v2.0
docker push tasil/feedback-app-frontend:latest

# Start the app with Docker Compose
docker-compose up --build