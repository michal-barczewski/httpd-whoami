# httpd_whoami

Simple role that sets up httpd to display host name, used for quickly testing network connection etc.

## Requirements

None

## Variables

httpd_whoami_ports - list of ports to listen on

## Dependencies

None

## Przykładowy Playbook

```yaml
- hosts: servers
  roles:
    - role: httpd-whoami
      httpd_whoami_ports:
        - 8080
        - 8081
        - 8082

```
