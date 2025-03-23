
#!/bin/bash

# Create instance template
gcloud compute instance-templates create auto-scale-template \
    --machine-type=e2-medium \
    --image-family=debian-11 \
    --image-project=debian-cloud

# Create managed instance group
gcloud compute instance-groups managed create auto-scale-group \
    --base-instance-name=auto-instance \
    --size=1 \
    --template=auto-scale-template \
    --zone=us-central1-a \
    --target-cpu-utilization=0.75 \
    --cool-down-period=60 \
    --max-num-replicas=5
  