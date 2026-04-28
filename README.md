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

## Support

EMULATE is part of the European initiative "Important Project of Common European Interest – Next Generation Cloud Infrastructure" (IPCEI-CIS), aimed at developing a unified, multi-provider cloud-edge continuum branded as "8ra (ORA)". The project actively collaborates with industry leaders in telecommunications, automotive, and embedded electronics to ensure real-world relevance and applicability.

We encourage engagement from academic and industry communities interested in contributing to cutting-edge developments in edge computing performance and optimization.

<p align="center"><img src="assets/eu-bmwk-funding.png" alt="Funded by the European Union and supported by the Federal Ministry for Economic Affairs and Energy" width="320"/></p>

## License

This project is licensed under the Apache License 2.0. See the [LICENSE](LICENSE) file for the full license text.
