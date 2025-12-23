# Example Output Logs

This file demonstrates what successful execution looks like for each tool.

## 1. Ansible Output

```text
PLAY [Install Web Server] ******************************************************

TASK [Gathering Facts] *********************************************************
ok: [web01]

TASK [Install Apache (Debian/Ubuntu)] ******************************************
changed: [web01]

TASK [Start and Enable Service (Debian/Ubuntu)] ********************************
changed: [web01]

TASK [Deploy Home Page] ********************************************************
changed: [web01]

PLAY RECAP *********************************************************************
web01                      : ok=4    changed=3    unreachable=0    failed=0
```

*   **ok:** Task ran successfully, no change needed (idempotent).
*   **changed:** Task ran successfully, system state was updated.

## 2. Chef Output (Local Mode)

```text
Starting Chef Client, version 16.10.17
[2024-01-01T12:00:00+00:00] INFO: *** Chef Client 16.10.17 ***
[2024-01-01T12:00:00+00:00] INFO: Platform: x86_64-linux
[2024-01-01T12:00:00+00:00] INFO: Run List is [recipe[sample_software]]
[2024-01-01T12:00:00+00:00] INFO: Run List expands to [sample_software]
[2024-01-01T12:00:00+00:00] INFO: Starting Chef Run for localhost
[2024-01-01T12:00:00+00:00] INFO: Running start handlers
[2024-01-01T12:00:00+00:00] INFO: Start handlers complete.
Converging 3 resources
Recipe: sample_software::default
  * apt_package[git] action install
    - install version 2.25.1-1ubuntu3 of package git
  * file[/tmp/chef_managed_config.conf] action create
    - create new file /tmp/chef_managed_config.conf
    - update content in file /tmp/chef_managed_config.conf from none to 123456
    - change mode from '' to '0644'
    - change owner from '' to 'root'
    - change group from '' to 'root'
  * log[message] action write
    [2024-01-01T12:00:05+00:00] INFO: Chef has successfully configured this node.

Running handlers
[2024-01-01T12:00:05+00:00] INFO: Running report handlers
[2024-01-01T12:00:05+00:00] INFO: Report handlers complete
Chef Client finished, 3/3 resources updated in 05 seconds
```

## 3. Puppet Output (Apply)

```text
Notice: Compiled catalog for localhost in environment production in 0.05 seconds
Notice: /Stage[main]/Main/Package[git]/ensure: created
Notice: /Stage[main]/Main/File[/tmp/puppet_managed_config.conf]/ensure: defined content as '{md5}123456...'
Notice: Puppet has successfully configured this node.
Notice: /Stage[main]/Main/Notify[Puppet has successfully configured this node.]/message: defined 'message' as 'Puppet has successfully configured this node.'
Notice: Applied catalog in 0.15 seconds
```
