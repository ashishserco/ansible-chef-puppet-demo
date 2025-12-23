# Ansible Explained

## Why Ansible?

Ansible is the primary automation tool in this repository because it represents the modern standard for cloud and infrastructure automation. Its simplicity and agentless architecture make it the preferred choice for many enterprises today.

## Core Architecture

### 1. Agentless
Ansible does not require any software to be installed on the target nodes.
*   **Linux:** Connects via SSH.
*   **Windows:** Connects via WinRM.

This reduces overhead and security complexity compared to agent-based tools like Chef or Puppet.

### 2. Push Model
The control node (or pipeline) "pushes" configuration to the servers. This is great for orchestration (e.g., "Update web servers, then update database").

### 3. Inventory
A simple text file (INI or YAML) that lists the servers to manage.
```ini
[webservers]
web01.example.com
web02.example.com
```

### 4. Playbooks & Modules
*   **Playbook:** A YAML file describing the desired state.
*   **Module:** The code that does the work (e.g., `yum`, `service`, `copy`).

## Example Breakdown

In `ansible-example/playbooks/install-software.yml`:

```yaml
- name: Install Web Server
  hosts: webservers
  tasks:
    - name: Ensure Apache is installed
      yum:
        name: httpd
        state: present
```

*   **hosts:** Targets the 'webservers' group.
*   **yum:** The module to manage packages on RHEL/CentOS.
*   **state: present:** The declarative goal. Ansible checks if it's there; if not, it installs it.

## Ansible in CI/CD

In Azure DevOps, we use the `Ansible@0` task or run `ansible-playbook` via a script. This allows us to trigger infrastructure updates automatically when code is merged.
