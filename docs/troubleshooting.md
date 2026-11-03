# Troubleshooting Guide

This document provides diagnostic guidance for common issues encountered when deploying and operating Edge-Emulator experiments.

Edge-Emulator combines Containerlab, Docker, network routing, Kubernetes environments, decentralized service discovery, and workload orchestration. Individual scenarios have different dependencies, network configurations, and resource requirements.

For installation and deployment instructions, refer to the [main README](../README.md) and the relevant scenario documentation.

## 1. Environment Verification

Before investigating a deployment problem, verify the host environment.

```bash
docker --version
sudo docker info
containerlab version
```

Check available system resources:

```bash
free -h
df -h
nproc
```

For scenarios using Open vSwitch:

```bash
sudo ovs-vsctl show
```

Verify that the required container images are available:

```bash
sudo docker images
```

Large experiments may require considerable memory, storage, and CPU resources. Consult the selected scenario's README before deployment.

## 2. Docker Issues

### Docker daemon is unavailable

**Symptoms**

- Docker commands cannot connect to the daemon.
- Containerlab cannot create containers.
- Container inspection commands fail.

**Diagnostics**

```bash
sudo systemctl status docker
sudo docker info
```

Inspect Docker service logs:

```bash
sudo journalctl -u docker -n 50 --no-pager
```

If the Docker service is not running, investigate the reported error before restarting it. Restarting Docker may interrupt existing experiments.

### Container exits unexpectedly

List all containers:

```bash
sudo docker ps -a
```

Inspect a specific container:

```bash
sudo docker logs <container-name> --tail 100
```

Replace `<container-name>` with the actual container name reported by Docker.

Check the container's state and exit code:

```bash
sudo docker inspect <container-name>
```

Review image compatibility, startup commands, mounted files, resource availability, and application logs.

## 3. Containerlab Deployment Issues

### Deployment fails or nodes are missing

Verify the installed Containerlab version:

```bash
containerlab version
```

Check active lab containers:

```bash
sudo docker ps
```

Inspect the deployed topology using its YAML file:

```bash
sudo containerlab inspect -t <topology-file.yml>
```

Common causes include:

- Missing or incompatible container images.
- Incorrect topology file paths.
- Invalid interface or link definitions.
- Insufficient host resources.
- Conflicting container names or existing lab resources.
- Missing permissions or network dependencies.

Verify topology paths, image references, and required configuration files against the relevant scenario documentation.

Avoid destroying or redeploying an existing experiment until the cause has been identified.

## 4. Network Connectivity and Routing

### Nodes cannot communicate

Inspect network interfaces inside an affected container:

```bash
sudo docker exec <container-name> ip addr
```

Check routes:

```bash
sudo docker exec <container-name> ip route
```

Test connectivity to a known reachable address:

```bash
sudo docker exec <container-name> ping -c 3 <destination-ip>
```

If communication fails, verify:

- Interface addresses and subnet masks.
- Default gateways and static routes.
- Containerlab link endpoints.
- Router configuration.
- Open vSwitch bridge connectivity, where applicable.

### OSPF neighbors are not established

For scenarios using FRRouting, inspect OSPF adjacency:

```bash
sudo docker exec <router-container> \
  vtysh -c "show ip ospf neighbor"
```

Inspect OSPF interfaces:

```bash
sudo docker exec <router-container> \
  vtysh -c "show ip ospf interface"
```

Check the routing table:

```bash
sudo docker exec <router-container> \
  vtysh -c "show ip route"
```

Verify interface IP addresses, OSPF area assignments, adjacency settings, and passive-interface configuration.

The expected neighbor state depends on the interface network type and topology. A point-to-point interface commonly reports `Full/-`.

Do not modify router configuration until the mismatch is identified.

## 5. Serf Membership and Discovery

### Serf nodes do not discover peers

First, check that the relevant containers are running:

```bash
sudo docker ps
```

Where the Serf CLI is available inside a container:

```bash
sudo docker exec <serf-container> serf members
```

Some Edge-Emulator scenarios use a bundled Serf binary or scenario-specific startup scripts. Consult the corresponding README if `serf` is not available in the container's executable path.

Check the following:

- Serf agents have been started.
- The intended peer addresses are reachable.
- Join operations target the correct addresses.
- Required communication ports are accessible.
- Agent configuration and cluster membership settings are consistent.

A running container does not necessarily indicate a healthy Serf agent.

### Resource discovery returns no candidates

Check whether:

- Seller agents are present in Serf membership.
- Seller resource metadata is correctly configured.
- Resource requirements exclude all available sellers.
- Discovery services and APIs are running.
- Buyer and seller endpoints are reachable.
- Network delays or timeouts affect communication.

Distinguish between an empty result caused by eligibility constraints and a failure of the discovery mechanism itself.

## 6. Kubernetes and K3s Issues

### Nodes or workloads are not ready

For scenarios using K3s, inspect the relevant node container.

Example for a Century scenario:

```bash
sudo docker exec clab-century-serf1 \
  k3s kubectl get nodes
```

Inspect workloads:

```bash
sudo docker exec clab-century-serf1 \
  k3s kubectl get pods -A
```

If required, inspect an individual pod with the appropriate namespace and pod name:

```bash
sudo docker exec <k3s-container> \
  k3s kubectl describe pod <pod-name> -n <namespace>
```

Common causes include:

- Insufficient CPU or memory.
- Unavailable container images.
- Missing Kubernetes configuration.
- Workloads waiting for dependencies.
- Networking or scheduling problems.

Node names and Kubernetes configurations differ between experiments.

## 7. Liqo Workload Offloading

If cross-cluster workload placement is unsuccessful, verify the underlying Kubernetes environments before investigating Liqo.

Inspect Kubernetes pods:

```bash
sudo docker exec <k3s-container> \
  k3s kubectl get pods -A
```

Check the relevant scenario's Liqo setup documentation and confirm:

- Liqo components are running in the intended clusters.
- The expected cluster peering has been established.
- Required network connectivity is available.
- Workload placement permissions and configuration are valid.
- The workload has sufficient eligible resources.

Use the Liqo validation and connection-management procedures documented for the selected scenario.

Avoid running installation or disconnection scripts as a troubleshooting shortcut on an active experiment.

## 8. 5G Standalone Simulation

The 5G scenario integrates Open5GS and UERANSIM.

Refer to the [5G scenario guide](../5g_sa_open5gs_ueransim/README.md) for the exact configuration and deployment workflow.

If a UE cannot register or establish a session, verify:

- Open5GS core services are running.
- The gNB and UE containers are active.
- Configuration files match the deployed network.
- PLMN, subscriber identities, authentication values, DNN, and slice settings are consistent.
- Required network endpoints are reachable.
- UERANSIM binaries were built successfully where required.

Inspect running containers:

```bash
sudo docker ps
```

Review relevant container logs:

```bash
sudo docker logs <container-name> --tail 100
```

For scenarios using the UERANSIM Git submodule, ensure the required source has been initialized according to the scenario instructions.

## 9. Performance and Resource Limitations

Unexpected latency, slow startup, or workload failures can result from host resource contention.

Inspect available memory:

```bash
free -h
```

Inspect running container resource utilization:

```bash
sudo docker stats --no-stream
```

Check storage availability:

```bash
df -h
```

For large-scale experiments, monitor CPU, memory, storage, and container startup behavior.

When investigating network performance, distinguish configured emulated delay from additional delay caused by host overload.

Do not interpret measurements from an overloaded host as representative without documenting the resource constraints.

## 10. Collecting Diagnostic Information

When reporting a problem, include:

- The selected Edge-Emulator scenario.
- Host operating system and relevant software versions.
- Topology configuration and node count.
- Steps required to reproduce the issue.
- Expected behavior and observed behavior.
- Relevant logs and command outputs.
- Any configuration changes made before the problem appeared.

**Security:** Review logs and configuration files before sharing them. Remove passwords, tokens, private keys, and other sensitive information.

## 11. Further Assistance

Check the relevant scenario README for setup requirements and known limitations.

For reproducible bugs or documentation problems, open an issue in the [Edge-Emulator GitHub repository](https://github.com/Edge-Emulator/Edge-Emulator/issues).

Include sufficient technical information for maintainers to reproduce and investigate the problem.

Avoid publishing sensitive credentials or security vulnerabilities in public issues.
