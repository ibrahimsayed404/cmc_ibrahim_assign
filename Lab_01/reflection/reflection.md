# Reflection - Lab 01

## 1) What did you implement?
I implemented the required latency testing workflow for the lab, including running the target service, generating multiple requests, collecting response-time results, and organizing the evidence as terminal outputs and screenshots. I also documented the test setup so the experiment can be repeated with the same conditions.

## 2) What latency behavior did you observe?
The latency distribution showed a clear pattern: most requests were in a low-latency range, with fewer high-latency outliers. During startup or under heavier load, response times increased, but after warm-up the median latency became more stable. This behavior matched the expected queueing and resource contention effects.

## 3) What was the biggest challenge and how did you solve it?
The biggest challenge was making the measurements consistent between runs. At first, background processes and inconsistent request counts affected results. I solved this by standardizing the number of requests, running tests under similar system conditions, and recording outputs immediately after each run.

## 4) What would you improve next?
Next, I would automate the benchmark process in a script to run multiple rounds and calculate average, median, and percentile metrics automatically. I would also compare performance before and after specific optimizations to show measurable improvements.
