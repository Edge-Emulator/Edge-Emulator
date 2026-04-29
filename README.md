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

---

## Acknowledgement

The EMULATE project is part of the  IPCEI-CIS program [(Important Project of Common European Interest on Next Generation Cloud Infrastructure and Services)](https://www.bundeswirtschaftsministerium.de/Redaktion/EN/Artikel/Industry/ipcei-cis.html), funded by the European Union and the Federal Ministry for Economic Affairs and Energy under research grant 13IPC012. IPCEI-CIS supports the development of a unified, multi-provider cloud-edge continuum under the 8ra initiative. The project works with partners across telecommunications, automotive, and embedded electronics to align research outcomes with practical industry requirements.

<p align="center"><img src="assets/eu-bmwk-funding.png" alt="Funded by the European Union and supported by the Federal Ministry for Economic Affairs and Energy" width="320"/></p>

## License

This project is licensed under the Apache License 2.0. See the [LICENSE](LICENSE) file for the full license text.
