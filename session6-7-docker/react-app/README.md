# Simple React App in Docker

A lightweight React application built with Vite and served using a multi-stage Docker build with Nginx (`nginx:alpine`).

## Project Structure

- `src/App.jsx` - Simple interactive React counter component.
- `src/main.jsx` - React entry point.
- `index.html` - Base HTML template.
- `vite.config.js` - Vite configuration.
- `Dockerfile` - Multi-stage build:
  - **Stage 1 (`build`)**: Compiles React code into optimized static HTML/CSS/JS via `node:20-alpine`.
  - **Stage 2 (`production`)**: Serves the static files using high-performance `nginx:alpine`.

## 1. Build the Docker Image

Navigate to this directory and run:

```bash
docker build -t react-app .
```

## 2. Run the Container

Run the container mapping host port `8083` (or any free port) to container port `80`:

```bash
docker run -d -p 8083:80 --name my-react-app react-app
```

## 3. Test the App

Open `http://localhost:8083` in your browser or test with `curl`:

```bash
curl http://localhost:8083
```

## 4. View Container Logs

```bash
docker logs my-react-app
```

## 5. Stop and Cleanup

```bash
docker stop my-react-app
docker rm my-react-app
```
