# Screenshot Capture Order (Labs 1-5)

Use this in order. After each command, take a screenshot and save it with the exact filename shown.

## Lab 1 (put images in Lab_01/screenshots)

1. Run latency command (example):

```powershell
ping 127.0.0.1 -n 50
```

Screenshot file: lab1_01_latency_command_and_output.png

2. If you used another benchmark tool, run it and capture summary (min/avg/max or percentile).

Screenshot file: lab1_02_latency_summary.png

3. Open your latency chart/histogram and capture it.

Screenshot file: lab1_03_latency_histogram.png

## Lab 2 (put images in Lab_02/screenshots)

1. Start distributed services:

```powershell
docker compose up -d
```

2. Show running containers:

```powershell
docker ps
```

Screenshot file: lab2_01_containers_running.png

3. Redis replication check:

```powershell
redis-cli INFO replication
redis-cli ROLE
```

Screenshot file: lab2_02_redis_replication.png

4. etcd leader election check:

```powershell
etcdctl endpoint health
etcdctl endpoint status --write-out=table
```

Screenshot file: lab2_03_etcd_leader_election.png

5. Partition/failover simulation (example: stop one node/container), then show status again.

```powershell
docker stop <node_or_service_name>
docker ps
etcdctl endpoint status --write-out=table
```

Screenshot file: lab2_04_failover_or_partition.png

## Lab 3 (put images in Lab_03/screenshots)

1. Show pods:

```powershell
kubectl get pods -o wide
```

Screenshot file: lab3_01_get_pods.png

2. Show services:

```powershell
kubectl get services
```

Screenshot file: lab3_02_get_services.png

3. Show deployments:

```powershell
kubectl get deployments
```

Screenshot file: lab3_03_get_deployments.png

4. Demonstrate self-healing: delete one pod.

```powershell
kubectl delete pod <pod_name>
```

Screenshot file: lab3_04_delete_pod.png

5. Show recreated pod:

```powershell
kubectl get pods -o wide
```

Screenshot file: lab3_05_self_healed_pod.png

## Lab 4 (put images in Lab_04/screenshots)

1. Start services:

```powershell
docker compose up -d
```

2. Successful product API calls:

```powershell
curl http://localhost:3001/products
```

Screenshot file: lab4_01_products_success.png

3. Successful order API calls:

```powershell
curl http://localhost:3002/orders
```

Screenshot file: lab4_02_orders_success.png

4. Create an order (example):

```powershell
curl -X POST http://localhost:3002/orders -H "Content-Type: application/json" -d '{"productId":1,"quantity":2}'
```

Screenshot file: lab4_03_create_order_success.png

5. Failure simulation (stop product-service and retry order call):

```powershell
docker stop product-service
curl -X POST http://localhost:3002/orders -H "Content-Type: application/json" -d '{"productId":1,"quantity":2}'
```

Screenshot file: lab4_04_failure_simulation.png

6. Recovery proof:

```powershell
docker start product-service
curl http://localhost:3001/products
```

Screenshot file: lab4_05_recovery_success.png

## Lab 5 (put images in Lab_05_event_pipeline/screenshots)

1. Running containers:

```powershell
docker ps
```

Screenshot file: lab5_01_containers_running.png

2. Event router logs:

```powershell
docker logs <event_router_container_name> --tail 100
```

Screenshot file: lab5_02_event_router_logs.png

3. Generated output image visible in output folder/viewer.

Screenshot file: lab5_03_generated_output_image.png

## Final quick check

1. File names match exactly.
2. Screenshots are readable (command + output visible).
3. Correct folder for each lab.
4. Rebuild ZIP after adding screenshots.
