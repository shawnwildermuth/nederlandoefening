$ErrorActionPreference = "Stop"
npm ci
npm run build
docker build -t goingdutch:latest .
docker tag goingdutch:latest shawnwildermuth/goingdutch:latest
docker push shawnwildermuth/goingdutch:latest
az webapp restart --name goingdutch --resource-group Applications