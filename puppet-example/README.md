# Puppet Reference Implementation

This directory contains a reference implementation of Puppet, designed to demonstrate understanding of declarative infrastructure management.

## Why Puppet?
Puppet is a mature, declarative tool that excels at enforcing state compliance. It is widely used in regulated industries.

## Architecture: Puppet Apply
To avoid the complexity of setting up a Puppet Master, this example uses **Puppet Apply**. This command compiles the catalog and applies it locally, which is perfect for testing and validation.

## Directory Structure

*   `manifests/`: Contains the Puppet code (.pp files).
*   `manifests/software.pp`: A simple manifest to install software.
*   `azure-pipelines.yml`: CI/CD definition to validate the manifest.

## How to Run

```bash
puppet apply manifests/software.pp
```
