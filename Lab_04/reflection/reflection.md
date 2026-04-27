# Reflection - Lab 04

## 1) How did product-service and order-service interact?
The order-service called product-service APIs to validate product data and availability before creating orders. Communication happened over the internal Docker network using service names, allowing one containerized service to discover and call the other without hardcoded host IPs.

## 2) Which API calls did you validate successfully?
I validated the main success flow: creating/listing products, creating orders, and retrieving order data that depends on product-service responses. I also verified that request/response payloads matched the expected schema and that status codes were returned correctly.

## 3) How did you simulate and verify a failure scenario?
I simulated failure by stopping or interrupting one service, then sending requests that depended on it. The system returned controlled error responses instead of crashing, and logs showed the failing dependency path. After service recovery, normal API behavior resumed.

## 4) Main design tradeoffs
The key tradeoff was simplicity versus resilience. A simple synchronous call flow is easier to implement and debug, but it is more sensitive to downstream failures. To improve resilience, patterns like retries, circuit breakers, and asynchronous messaging could be added, though they increase system complexity.
