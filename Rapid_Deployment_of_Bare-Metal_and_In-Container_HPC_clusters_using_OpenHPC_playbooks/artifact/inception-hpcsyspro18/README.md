# clusterworks

clusterworks is a toolkit that brings together the best modern technologies in order to create fast and flexible turn-key HPC environments, deployable on bare-metal infrastructure or in the cloud.


Key features

- Built on the amazing work by the [OpenHPC Community](https://openhpc.community/)
- Easy to use workflows for provisioning and deploying cluster environments
- Repository, package and configuration management
- Turn-key, extensible and instilled with best practice
- Containerize an environment to share or deploy in the cloud
- 100% free and open-source software

The *inception* repository provides the core Ansible playbook, which is to build a cluster environment and install all the other tools using a well defined, easy to use and extensible workflow.

To deploy on bare metal, just provide an inventory of the physical resources.

To deploy in the cloud, a container can be created from your environment configuration using [Ansible Container](https://docs.ansible.com/ansible-container/).

## Quick Start

1. Clone or fork this repository
2. Copy the template config file to `config.yml` and edit as required
3. Add machines to the inventory
4. Run `./run_playbook.sh install_master`
5. Run `./run_playbook.sh install_nodes`
6. Boot up all the nodes
7. Run `./run_playbook.sh update_nodes`

### Demonstration

[![](http://img.youtube.com/vi/GZEcDA8pBPY/0.jpg)](http://www.youtube.com/watch?v=GZEcDA8pBPY "Installing OpenHPC using the clusterworks")

## Software Stack status

- [x] CentOS / RedHat
- [ ] SLES
- [x] xCAT Stateful
- [x] xCAT Stateless
- [ ] Warewulf
- [x] PBS Professional
- [ ] Slurm

## Proxy support

This playbook supports two kinds of proxies.

Firstly, set `proxy_host` and `proxy_port` in the config file to set an upstream proxy to download assets required from the Internet.

Secondly, set `repository_type == 'cache'` in order to deploy a local Squid proxy on the SMS node in order to cache packages for worker node deployment.
If you also use a proxy to connect to the internet, set it as above and it will be configured as the upstream peer for the local cache.

## License

GPLv3
