# Reflection - Lab 02

## 1) How did you configure Docker and services?
I configured the services using Docker and Docker Compose with separate containers for each component, explicit port mappings, and a shared network. I used compose definitions to control startup order and environment variables, then verified container health and connectivity through logs and command outputs.

## 2) How did you verify replication and leader election?
I verified replication by checking role/status commands for each node and confirming that updates on the primary were visible on replicas. For leader election, I inspected etcd cluster/member status outputs and observed which node was elected leader. Screenshots were captured as proof for each validation step.

## 3) What happened during partition/failover simulation?
During simulated disruption, the cluster temporarily lost connectivity to one node, then rebalanced and continued operation with available nodes. In failover testing, when the active node became unavailable, another healthy node took over based on cluster election rules. The behavior demonstrated resilience and service continuity.

## 4) Key lessons learned
The main lesson was that distributed systems require both correct configuration and correct observability. It is not enough to run containers; I must verify state, roles, and recovery behavior under failure. I also learned the value of clear evidence collection, because screenshots and command outputs make validation straightforward.
