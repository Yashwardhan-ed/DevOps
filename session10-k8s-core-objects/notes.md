## The 4 Main Kubernetes Ports container

1. containerPort: The port configured on the application image inside the container.
2. targetPort: The port on the Pod that receives traffic from a Service and forwards it to the container.
3. port: The internal cluster port exposed by a Kubernetes Service to allow inside-the-cluster communication.
4. nodePort: A static port opened on every worker node to expose the application to external traffic.

---
