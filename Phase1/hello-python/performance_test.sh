#!/bin/bash

# URL to test (make sure the Flask service is running)
URL="http://localhost:8080/hello"

# Number of requests to send
NUM_REQUESTS=100

# Execute the requests in parallel using curl and measure the time taken
total_time=$(for i in $(seq 1 $NUM_REQUESTS); do
  { time curl -s -o /dev/null $URL; } 2>&1 | grep real | awk '{print $2}' | sed 's/[^0-9.]//g'
done | awk '{sum+=$1} END {print sum}')

# Calculate the average time
average_time=$(echo "scale=2; $total_time / $NUM_REQUESTS" | bc)

# Output the average response time
echo "Average response time: $average_time seconds"

# Check if the average response time is below 1 second
if (( $(echo "$average_time < 1" | bc -l) )); then
  echo "Performance test passed: Average response time is below 1 second"
else
  echo "Performance test failed: Average response time is above 1 second"
fi

