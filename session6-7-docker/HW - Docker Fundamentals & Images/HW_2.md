# Task 1 & Task 2: Multi-Stage Dockerfile Execution & Documentation

**Name:** Yashwardhan  
**Enrollment Number:** 10411

---

## 1. Multi-Stage Dockerfile Overview
- **Builder Stage (`node:24-alpine`):** Installs all project dependencies and prepares the application.
- **Production Stage (`node:24-alpine`):** Copies only production dependencies (`--omit=dev`) and source files into a clean runtime image, exposing port `3000`.

---

## 2. Commands Executed

```bash
cd session6-7-docker/multi-stage-dockerfile

docker build -t multi-stage-app .

docker run -d -p 8080:3000 --name multi-stage multi-stage-app:latest
```

---

## 3. Container Verification on Port 8080 (`docker ps`)

### Output:
```bash
$ docker ps
CONTAINER ID   IMAGE                    COMMAND                  CREATED          STATUS          PORTS                                         NAMES
e9c85b67e6c0   multi-stage-app:latest   "docker-entrypoint.s…"   39 seconds ago   Up 38 seconds   0.0.0.0:8080->3000/tcp, [::]:8080->3000/tcp   multi-stage
```

### Screenshot:
![](../../assets/Multi-Stage-Build.png)

---

## 4. Application Verification & Output

### Output:
```bash
$ curl -i http://localhost:8080
HTTP/1.1 200 OK
X-Powered-By: Express
Content-Type: text/html; charset=utf-8
Content-Length: 51
ETag: W/"33-gCAsBJJtlso/BVPWoV3U/pWC3Ak"
Date: Thu, 03 Sep 2026 13:32:01 GMT
Connection: keep-alive
Keep-Alive: timeout=5

<h1>Hello World from Docker Multi-Stage Build!</h1>
```

### Screenshot:
![](../../assets/Multi-Stage-Build-SS.png)

