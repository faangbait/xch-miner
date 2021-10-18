# xch-miner

first time setup to deploy chia miner onto an r730 server (note that this WILL probably wipe your boot disk and destroy your computer):

```bash
cd ansible
ansible-playbook -i inventory/hosts playbooks/deploy-r730.yml
```

### variables:

**plot_hard_disks**: A list of drives that will store plots (e.g. not your boot drive)

**plot_mounts**: A list of drives that will store plots + [tmpfs, process, and chia]

**farmer_key**: Your farmer key

**pool_key**: Your pool key

