# Emulation Platform

This emulation platform is built on top of **[Containerlab](https://containerlab.dev/)** and enables realistic simulation of edge networking and Kubernetes-based environments. It integrates tools like **K3s**, **KWOK**, and **LIQO** for advanced orchestration scenarios, all within a lightweight and customizable containerized setup.

---

## Installation

A ready-to-use script `start.sh` is provided to automate the environment provisioning. It performs the following:

- Installs essential tools:
  - [Docker](https://www.docker.com/)
  - [Containerlab](https://containerlab.dev/)
  - [Wireshark](https://www.wireshark.org/)
- Pulls and configures:
  - The **Arista vEOS** image
  - A custom image that includes:
    - **K3s** (lightweight Kubernetes)
    - **KWOK** (Kubernetes Without Kubelet)
    - **LIQO** (dynamic multi-cluster management)

### Setup

Run the following command to get started:

```bash
./start.sh
```