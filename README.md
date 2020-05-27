----
# ansible-role-util-user
Simple role for setting up a user and associated config

## Example
```
  tasks:
  - name: 'set up users'
    include_role:
      name: ansible-role-util-user
    vars:
      user: '{{item}}'
    loop: '{{your_users}}'
```

## Input variables
Expects a `user` dictionary of the form:
| Field | Type | Purpose |
| ----- | ---- | ------- |
| name     | string       | username in `/etc/passwd`|
| backup   | Boolean      | true |
| comment  | string       | GECOS field in `/etc/passwd` |
| email    | string       | future use |
| groups   | list(string) | groups to append the user to |
| mortal   | Boolean      | if false, flags a svc acct and skips some tasks |
| ssh_keys | list({key,state}) | list of keys to add or remove |
| state    | Boolean      | adds or removes the user |

## To Do
- allow users to be removed from groups

****
