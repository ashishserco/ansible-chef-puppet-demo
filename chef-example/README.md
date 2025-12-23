# Chef Reference Implementation

This directory contains a reference implementation of Chef, designed to demonstrate understanding of legacy configuration management systems.

## Why Chef?
Chef is a powerful, Ruby-based tool used by many large enterprises. While this project prioritizes Ansible, understanding Chef is critical for migration projects and maintaining existing infrastructure.

## Architecture: Local Mode (Chef Zero)
To avoid the complexity of setting up a full Chef Server, this example uses **Chef Local Mode**. This allows us to run recipes on the local machine as if it were a client connected to a server.

## Directory Structure

*   `cookbooks/`: Contains the Chef cookbooks.
*   `cookbooks/sample_software/`: A simple cookbook to install software.
*   `azure-pipelines.yml`: CI/CD definition to validate the cookbook.

## How to Run

```bash
chef-client --local-mode --runlist 'recipe[sample_software]'
```
