# Simple Java App in Docker

A lightweight, zero-dependency Java web server containerized with Docker using `eclipse-temurin:17-jdk-alpine`.

## Project Structure

- `Main.java` - A simple HTTP server using standard library `com.sun.net.httpserver.HttpServer` listening on port `8080`.
- `Dockerfile` - Builds the image, compiles the Java code, and configures the container execution.

## 1. Build the Docker Image

Navigate to this directory and build the Docker image:

```bash
docker build -t java-app .
```

## 2. Run the Container

Run the container in detached mode mapping host port `8082` (or any available port) to container port `8080`:

```bash
docker run -d -p 8082:8080 --name my-java-app java-app
```

## 3. Test the App

Send a request using `curl` or open `http://localhost:8082` in your browser:

```bash
curl http://localhost:8082
```

Expected output:
```text
Hello World from Java in Docker!
```

## 4. View Container Logs

```bash
docker logs my-java-app
```

## 5. Stop and Cleanup

```bash
docker stop my-java-app
docker rm my-java-app
```
