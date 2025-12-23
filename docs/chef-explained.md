# Chef Explained

## Why Chef?

Chef is included in this repository as a **reference implementation**. While Ansible has gained popularity for its simplicity, Chef is still widely used in large enterprises, especially those with complex, long-lived infrastructure.

## Core Architecture

### 1. Agent-Based (Pull Model)
Traditionally, a **Chef Client** runs on every server. It periodically checks in with the **Chef Server** to pull down the latest configuration.
*   **Pros:** Great for massive scale (10k+ nodes) and ensuring compliance over time.
*   **Cons:** Requires managing the agent and the Chef Server infrastructure.

### 2. Ruby DSL
Chef uses a Domain Specific Language (DSL) based on Ruby. This makes it extremely powerful but requires more programming knowledge than Ansible's YAML.

### 3. Cookbooks & Recipes
*   **Cookbook:** A package of configuration code (like a module).
*   **Recipe:** The actual script that defines resources (like a playbook task).

## How We Use It Here (Chef Zero / Local Mode)

To keep this project simple and runnable without a Chef Server, we use **Chef Local Mode** (also known as Chef Zero).

This allows us to run Chef recipes on a machine using the `chef-client --local-mode` command. It simulates a Chef Server in memory.

## Example Breakdown

In `chef-example/cookbooks/sample_software/recipes/default.rb`:

```ruby
package 'httpd' do
  action :install
end

service 'httpd' do
  action [:enable, :start]
end
```

*   **package 'httpd':** A resource telling Chef to manage a package.
*   **action :install:** The desired state.
*   **Ruby Syntax:** Notice the `do...end` blocks. This is real Ruby code.

## Chef in CI/CD

In our pipeline, we install the Chef Workstation tools and run `chef-client -z` (local mode) to demonstrate how the code executes.
