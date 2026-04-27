# Lab-by-Lab Finish Plan

Follow this top to bottom. Do not move to the next lab until the current lab is complete.

## Lab 1

Goal: submit performance evidence and reflection.

Do:
1. Run your latency test command(s).
2. Save terminal output in Lab_01/latency-results.
3. Add one histogram image.
4. Capture 2-3 screenshots (command + output + histogram).
5. Review and keep final reflection answers in Lab_01/reflection/reflection.md.

Required evidence files:
- Lab_01/latency-results/terminal_output.txt
- Lab_01/latency-results/ping_latency_sample.txt or your tool output file
- Lab_01/screenshots/lab1_01_latency_command_and_output.png
- Lab_01/screenshots/lab1_02_latency_summary.png
- Lab_01/screenshots/lab1_03_latency_histogram.png

## Lab 2

Goal: show Docker setup + Redis/etcd behavior under replication and failover.

Do:
1. Start services with Docker Compose.
2. Capture running containers screenshot.
3. Run Redis replication commands and capture output screenshot.
4. Run etcd leader election commands and capture output screenshot.
5. Simulate node/service failure and capture failover screenshot.
6. Save raw command output text files in Lab_02/commands-results.
7. Finalize reflection in Lab_02/reflection/reflection.md.

Required evidence files:
- Lab_02/docker/docker-compose-sample-from-lab4.yml (or your real compose)
- Lab_02/commands-results/redis_etcd_commands.txt
- Lab_02/commands-results/redis_etcd_results.txt
- Lab_02/screenshots/lab2_01_containers_running.png
- Lab_02/screenshots/lab2_02_redis_replication.png
- Lab_02/screenshots/lab2_03_etcd_leader_election.png
- Lab_02/screenshots/lab2_04_failover_or_partition.png

## Lab 3

Goal: show containerized app on Kubernetes with self-healing.

Do:
1. Apply Kubernetes manifests.
2. Capture pods/services/deployments outputs.
3. Delete one pod and capture recreated pod evidence.
4. Save kubectl command output text.
5. Finalize reflection in Lab_03/reflection/reflection.md.

Required evidence files:
- Lab_03/app (app files + Dockerfile)
- Lab_03/k8s/deployment-service-sample.yaml (or your real YAML)
- Lab_03/k8s/kubectl_commands.txt
- Lab_03/screenshots/lab3_01_get_pods.png
- Lab_03/screenshots/lab3_02_get_services.png
- Lab_03/screenshots/lab3_03_get_deployments.png
- Lab_03/screenshots/lab3_04_delete_pod.png
- Lab_03/screenshots/lab3_05_self_healed_pod.png

## Lab 4

Goal: microservices with successful APIs and failure simulation.

Do:
1. Run product-service and order-service with Docker Compose.
2. Capture successful product API call screenshot.
3. Capture successful order API call screenshot.
4. Simulate dependency failure and capture error screenshot.
5. Recover service and capture success screenshot.
6. Finalize reflection in Lab_04/reflection/reflection.md.

Required evidence files:
- Lab_04/product-service (source + Dockerfile)
- Lab_04/order-service (source + Dockerfile)
- Lab_04/docker-compose.yml
- Lab_04/screenshots/lab4_01_products_success.png
- Lab_04/screenshots/lab4_02_orders_success.png
- Lab_04/screenshots/lab4_03_create_order_success.png
- Lab_04/screenshots/lab4_04_failure_simulation.png
- Lab_04/screenshots/lab4_05_recovery_success.png

## Lab 5

Goal: local serverless/event-driven image pipeline evidence.

Do:
1. Run pipeline containers.
2. Capture containers screenshot.
3. Capture event router logs screenshot.
4. Capture generated output image screenshot.
5. Finalize reflection in Lab_05_event_pipeline/reflection/reflection.md.
6. Prepare Word/PDF with screenshots + reflection answers for Teams.

Required evidence files:
- Lab_05_event_pipeline/screenshots/lab5_01_containers_running.png
- Lab_05_event_pipeline/screenshots/lab5_02_event_router_logs.png
- Lab_05_event_pipeline/screenshots/lab5_03_generated_output_image.png

## Final Submission

1. Confirm GitHub URL in GitHub_Link.txt.
2. Run verify_submission.ps1.
3. Fix all FAIL lines.
4. Rebuild ZIP.
5. Upload ZIP + Lecture 5 Word/PDF + GitHub URL in Teams.
