# ansible_labs
Various docker lab setups for testing automation with ansible

---
### Lab1
Test ansible control node with four managed node with SSH key-based authentication (ssh connection plugin), simply run `docker comose up` and `docker container exec` into the *ansible-controller* container to make tests on managed nodes.

An environment variable is set in the *docker-compose* file to force the */root/test_env/ansible.cfg* file to be the configuration file whatever your CWD is, so make your configuration changes in that directory.

__Requirements:__
- Run the script */root/test_env/script/scan_hosts.sh* upon each `docker compose up` before doing your tests (Must be run inside the *script* directory.
---

### Lab2
A lab to test container deployment via a Playbook and configuration of managed nodes (containers) via the *docker* connection plugin.

__Requirements:__
- ansible must be installed in your local environment.
---
