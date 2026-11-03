# Contributing to Edge-Emulator

Thank you for your interest in contributing to Edge-Emulator.

Edge-Emulator is an open-source research platform for experimenting with distributed edge infrastructures, network emulation, peer-to-peer resource discovery, and workload orchestration.

Contributions that improve reproducibility, documentation, experimental scenarios, and platform reliability are welcome.

## Getting Started

Before making changes:

1. Review the main `README.md` to understand the platform architecture and supported scenarios.
2. Read the documentation associated with the experiment or component you intend to modify.
3. Check existing GitHub issues and pull requests to avoid duplicate work.
4. For substantial changes, open an issue describing the proposed improvement.

## Development Workflow

1. Create a separate development branch.
2. Make focused changes relevant to a single feature, correction, or improvement.
3. Verify that the changes do not interfere with existing experimental workflows.
4. Update the relevant documentation when changing configuration or behavior.
5. Submit a pull request describing the changes and their validation.

Avoid making unrelated changes within the same pull request.

## Experiment and Configuration Guidelines

Edge-Emulator contains multiple experimental environments with different networking and deployment requirements.

When modifying an existing scenario:

- Preserve established topology names, network configurations, and deployment paths unless changes are necessary and documented.
- Document changes to dependencies, container images, interfaces, and configuration parameters.
- Include the software versions and environment used for validation.
- Provide reproducible deployment and verification instructions.
- Include cleanup procedures for newly introduced resources.
- Do not commit private credentials, generated certificates, temporary runtime files, or environment-specific secrets.

## Documentation Contributions

Documentation improvements are encouraged, particularly those that make experiments easier to reproduce.

Please ensure that:

- Commands are executable in the documented environment.
- File paths and configuration references are accurate.
- Prerequisites are clearly identified.
- Expected results are distinguished from illustrative examples.
- Any limitations or assumptions are stated explicitly.

## Pull Request Checklist

Before submitting a pull request, verify the following:

- [ ] The change has a clear purpose.
- [ ] Relevant documentation has been updated.
- [ ] Existing functionality has been preserved.
- [ ] Applicable tests or validation steps have been performed.
- [ ] No sensitive information or generated runtime artifacts have been added.
- [ ] The pull request describes the changes and how they were verified.

## Reporting Issues

Use GitHub Issues to report bugs, documentation problems, or feature requests.

For technical issues, include the affected scenario, host environment, relevant software versions, reproduction steps, expected behavior, and observed results.

Remove passwords, tokens, private keys, and other sensitive information from any shared logs.

Potential security vulnerabilities should be reported privately to the maintainers rather than disclosed in public issues.

## Research and Reproducibility

Contributions involving experimental results should identify the topology, workload, measurement methodology, software versions, and configuration parameters.

Where practical, include scripts or instructions that allow other researchers to reproduce the results.

## License

By contributing to Edge-Emulator, you agree that your contributions will be distributed under the repository's Apache License 2.0, unless otherwise agreed and documented.
