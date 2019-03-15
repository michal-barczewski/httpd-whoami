# httpd_whoami

Simple role that sets up httpd to display host name, used for quickly testing network connection etc.

## Requirements

None

## Variables

None

## Dependencies

None

## Przykładowy Playbook

```yaml
- hosts: servers
  roles:
    - role: httpd-whoami
```
