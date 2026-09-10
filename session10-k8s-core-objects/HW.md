# Homework 

# # Difference between DaemonSet, stateful Set and Deployement

# # # Deployment

Use case: Stateless applications (web servers, APIs, microservices) where pods are interchangeable.

Pods are fungible — any replica can serve any request; none has a distinct identity.
Pod names are random hashes (yatri-backend-7d9f8c-x2kj9), and they get a new identity when recreated.
No stable network identity or storage per pod — if a pod dies, a new one spins up with a new name/IP.
Supports rolling updates, rollbacks, scaling up/down freely.
Typically paired with a Service that load-balances across all replicas equally.

# # # StatefulSet

Use case: Stateful applications that need stable identity, storage, or ordering — databases (PostgreSQL, MongoDB), distributed systems (Kafka, Zookeeper, Elasticsearch).

Each pod gets a stable, unique, predictable name (myapp-0, myapp-1, myapp-2) that persists across restarts/rescheduling.
Each pod gets its own persistent storage (via volumeClaimTemplates) that follows it — pod myapp-0 always reattaches to the same PersistentVolume, even if rescheduled to a different node.
Pods are created, scaled, and terminated in order (0, 1, 2, ... and reverse for scale-down) — important for systems where node 0 might be a leader/primary.
Gets a stable network identity via a headless Service, so other pods/clients can address a specific replica directly (myapp-0.myapp-service).
Rolling updates happen in order too (reverse ordinal by default).

# # # DaemonSet

Use case: Cluster-wide agents that need to run exactly once per node — log collectors (Fluentd), monitoring agents (node-exporter), network plugins (CNI), storage daemons.

No replicas field — instead, it automatically runs one pod per node in the cluster (or a filtered subset via node selectors/affinity).
When a new node joins the cluster, a pod is automatically scheduled onto it. When a node is removed, its pod is garbage collected.
Not about scaling a workload — it's about ensuring coverage across infrastructure.
Often needs elevated privileges (hostNetwork, hostPath volumes) since it's typically interacting with the node itself.



