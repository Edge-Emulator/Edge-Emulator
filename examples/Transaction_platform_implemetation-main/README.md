# Distributed edge experiments: setup and execution

This directory contains network topologies, service discovery, Kubernetes and workload-offloading components, and CometBFT transaction modules for distributed edge experiments. Each scenario has its own configuration and setup instructions.

## Choose a scenario

| Scenario | Topology guide | Transaction module guide |
| --- | --- | --- |
| 25 nodes | [25-node topology](25_nodes_unclustered/25nodeTopo/README.md) | [25-node transaction module](25_nodes_unclustered/serf-comet-fullnode-tx/README.md) |
| 50 nodes | [50-node topology](50_nodes_unclustered/50-Node-Topology/README.md) | [50-node transaction module](50_nodes_unclustered/serf-comet-fullnode-tx/README.md) |
| 162 nodes | [162-node topology](162_nodes_unclustered/162-Node-Topology/README.md) | [Transaction module requiring adaptation](162_nodes_unclustered/serf-comet-fullnode-tx/README.md) |

The transaction setup under `162_nodes_unclustered/` currently targets 25 containers with the `clab-century-serf` prefix. Adapt its container list and configuration to the 162-node topology before using it.

## Setup order

1. **Prepare the host.** Follow the [main Edge-Emulator README](../../README.md). On a new Ubuntu host, run `bash start.sh` from the Edge-Emulator repository root to install the base tools.
2. **Deploy the topology.** Follow the selected topology guide and configure its images, interfaces, addresses, and routes.
3. **Start the scenario services.** Configure Serf discovery, buyer/seller services, and any required Kubernetes or Liqo components using that scenario's instructions.
4. **Configure the transaction module.** Follow the matching transaction guide. Check container names, node counts, CometBFT chain and validator configuration, and service endpoints before starting transaction tests.

## Example: 50-node transaction setup

After deploying the 50-node topology and its services, run this on the host from the directory containing this README:

```bash
(
  cd 50_nodes_unclustered/serf-comet-fullnode-tx/50NodeCometSetup &&
  sudo bash setup_cometbft.sh
)
```

The setup script uses files relative to its directory and copies `cometclient/main.py` to `/root/main.py` inside the target containers.

To start the transaction client on a configured buyer container, run on the host:

```bash
sudo docker exec -it clab-century-serf3 bash -c 'cd /root && python3 main.py'
```

Replace `clab-century-serf3` with your buyer container. Before running the client, confirm that `/opt/serfapp/node.json` is configured and that the Serf, discovery, Redis, CometBFT, and ABCI services it uses are running. Keep the client in the foreground to inspect its output; press `Ctrl+C` to stop it.

For API-based transaction submission and validator management, use the corresponding transaction module guide.

