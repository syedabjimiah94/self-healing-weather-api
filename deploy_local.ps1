Write-Host "Stopping old containers..."
docker compose down

Write-Host "Building fresh images..."
docker compose build --no-cache

Write-Host "Starting application..."
docker compose up -d

Write-Host "Deployment completed."
Write-Host "Backend: http://localhost:8000"
Write-Host "Frontend: http://localhost:8501"