# DevOps Overview

## What is DevOps?

DevOps is not just a set of tools; it is a culture and practice that unifies software development (Dev) and IT operations (Ops). The goal is to shorten the systems development life cycle and provide continuous delivery with high software quality.

## The Automation Ecosystem

In a modern enterprise, automation happens at multiple layers:

1.  **Infrastructure as Code (IaC):** Provisioning servers and networks (e.g., Terraform, ARM Templates).
2.  **Configuration Management (CM):** Configuring the operating system and installing software (e.g., Ansible, Chef, Puppet).
3.  **CI/CD Pipelines:** Orchestrating the build, test, and deployment process (e.g., Azure DevOps, Jenkins).

## Where This Project Fits

This project focuses specifically on **Configuration Management** and its integration with **CI/CD Pipelines**.

### The Workflow

1.  **Code Change:** A developer updates a configuration script (e.g., an Ansible playbook).
2.  **Pipeline Trigger:** Azure DevOps detects the change and starts a pipeline.
3.  **Validation:** The pipeline runs syntax checks and linters.
4.  **Deployment:** The pipeline executes the configuration tool (Ansible/Chef/Puppet) against target servers.
5.  **Verification:** The system ensures the server is in the desired state.

## Why Multiple Tools?

Enterprises often have a mix of tools due to:
- **Legacy Systems:** Older servers managed by Chef or Puppet.
- **Modernization:** New cloud workloads managed by Ansible.
- **Mergers & Acquisitions:** Inheriting different tech stacks.

A senior engineer must be comfortable navigating and integrating all of them.
