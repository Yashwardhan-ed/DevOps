emptyDir

An ephemeral volume created when a Pod is assigned to a node, shared across containers in that Pod. It is permanently deleted whenever the Pod is removed or crashes out of existence.

hostPath

Mounts a specific file or directory from the host node’s local filesystem directly into your Pod. It persists across Pod restarts on that node, but data is inaccessible if the Pod reschedules elsewhere.

PersistentVolume (PV)

A cluster-level storage resource provisioned by an administrator or dynamically via storage plugins. It has an independent lifecycle from any individual Pod that mounts it.

PersistentVolumeClaim (PVC)

A developer's request for storage that specifies size, access modes, and volume attributes. It acts like a voucher that binds to a matching PV so Pods can consume it.

StorageClass

An API object defining the storage provisioner, parameters, and quality-of-service rules for volumes. It provides the blueprint that Kubernetes uses to provision storage on demand.

Dynamic Provisioning

The automated creation of a PersistentVolume in response to a PVC requesting a StorageClass. It removes the need for cluster admins to manually pre-allocate physical storage up front.

