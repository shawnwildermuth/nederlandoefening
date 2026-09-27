$ErrorActionPreference = "Stop"
npm ci
npm run build
docker build -t goingdutch:latest .
docker tag goingdutch:latest docker.com/shawnwildermuth/goingdutch:latest
docker push docker.com/shawnwildermuth/goingdutch:latest