# Reflection - Lab 03

## 1) What did your Dockerfiles and Kubernetes manifests define?
My Dockerfiles defined the application runtime image, dependencies, working directory, and startup command. My Kubernetes manifests defined deployments, services, labels/selectors, and replica behavior so the app could run in a managed and scalable way inside the cluster.

## 2) How did you verify service exposure and deployment health?
I used kubectl outputs to verify pod status, deployment availability, and service configuration. I checked that pods reached Running state, deployment replicas were ready, and the service endpoint could be reached through the exposed port. I saved terminal outputs and screenshots as evidence.

## 3) How did you demonstrate self-healing?
I deleted one running pod manually and observed Kubernetes automatically create and start a replacement pod to maintain the desired replica count. This confirmed that the controller loop was enforcing declared state and that the application recovered without manual rebuild.

## 4) What would you improve in production?
For production readiness, I would add readiness and liveness probes, resource requests/limits, secrets/configmaps, and centralized logging/monitoring. I would also set up rolling update strategy tuning and horizontal pod autoscaling based on workload metrics.
