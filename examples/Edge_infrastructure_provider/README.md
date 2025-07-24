# Lab Topology Overview

This lab consists of:

- **9 FRR routers**
- **25 client nodes**
- **5 switches**

## Getting Started

To deploy the lab, run the following script:

    ./run.sh
This script performs the following actions:

 - Deploys the topology using Containerlab

 - Configures the client interfaces

## Image Configuration
Before running the lab, ensure the correct container images are defined in the frr01.clab.yaml file.

### Clients
You can use any Linux distribution-based image (e.g., Debian).

Update the client image references in frr01.clab.yaml accordingly.

### Switches (Arista cEOS)
The cEOS image must be correctly specified in the YAML file.

My ceos image can be pulled from Docker Hub using the following command:

    docker pull testing954/ceos:4.28.0F

Ensure the image name in frr01.clab.yaml matches the pulled image exactly.
