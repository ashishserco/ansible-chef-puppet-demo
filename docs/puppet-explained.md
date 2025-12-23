# Puppet Explained

## Why Puppet?

Puppet is included as a reference for **declarative** infrastructure management. It is one of the oldest and most mature tools in the space, famous for its strict adherence to the "desired state" model.

## Core Architecture

### 1. Declarative Language
Puppet uses its own DSL that is strictly declarative. You describe *what* the resource should look like, and Puppet's engine figures out the order and method to apply it.

### 2. The Graph
Puppet compiles your code into a "catalog" which represents a dependency graph. This ensures that if Resource B depends on Resource A, A is always applied first, regardless of where it appears in the file.

### 3. Manifests (.pp)
Puppet code files are called manifests and end in `.pp`.

## How We Use It Here (Puppet Apply)

Like Chef, Puppet is traditionally client-server. However, for this demonstration, we use `puppet apply`. This command compiles the catalog and applies it locally, without needing a Puppet Master server.

## Example Breakdown

In `puppet-example/manifests/software.pp`:

```puppet
package { 'httpd':
  ensure => installed,
}

service { 'httpd':
  ensure => running,
  enable => true,
  require => Package['httpd'],
}
```

*   **package { 'httpd': ... }**: The resource declaration.
*   **ensure => installed**: The desired state.
*   **require => Package['httpd']**: Explicit dependency. The service will NOT start until the package is successfully installed.

## Puppet in CI/CD

Our pipeline installs the Puppet agent (which includes the tools) and runs `puppet apply` against the manifest. This validates that the code is syntactically correct and can be applied to a system.
