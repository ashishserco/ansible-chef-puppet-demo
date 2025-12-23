# Ansible Automation Examples

This directory contains the primary automation examples for the project. Ansible is chosen as the main tool due to its agentless architecture and ease of use.

## Directory Structure

*   `playbooks/`: Contains the YAML files that define the automation tasks.
*   `azure-pipelines.yml`: The CI/CD definition to run these playbooks.

## Playbooks

### 1. `patch-linux.yml`
Demonstrates how to update packages on RHEL/CentOS and Ubuntu systems. It handles:
*   Updating the package cache.
*   Upgrading all packages.
*   Checking if a reboot is required.

### 2. `patch-windows.yml`
Demonstrates Windows automation using the `ansible.windows` collection. It handles:
*   Searching for updates.
*   Installing updates.
*   Rebooting if necessary.

### 3. `install-software.yml`
A generic example of ensuring a specific state (idempotency).
*   Installs a web server (Apache/Nginx).
*   Ensures the service is running.
*   Deploys a custom index.html file.

## How to Run

In a real environment, you would run:

```bash
ansible-playbook -i inventory.ini playbooks/install-software.yml
```

In this demo, the **Azure DevOps Pipeline** handles the execution.
