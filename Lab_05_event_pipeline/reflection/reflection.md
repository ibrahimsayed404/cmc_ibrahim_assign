# Reflection - Lecture 5 Event Pipeline

## 1) How did you set up the local event-driven pipeline?
I built the pipeline locally using containerized components for event intake, routing, processing, and output generation. The services were connected through Docker networking and configured with environment variables so they could run without any cloud dependency.

## 2) What did the event router logs show?
The router logs showed event reception, forwarding to the processing component, and completion events after processing. I could trace each image event through the pipeline stages, which confirmed the event-driven flow was working end-to-end.

## 3) How did you verify the output image generation?
I triggered the pipeline with an input image, then verified that a transformed output image was generated in the expected output location. I captured screenshots of the container state, router logs, and final image as proof for the report.

## 4) What improvements would you make next?
Next, I would add retry and dead-letter handling for failed events, structured logging, and basic health checks/metrics for each service. I would also improve processing throughput by supporting parallel workers for batch workloads.
