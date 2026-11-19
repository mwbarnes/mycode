# Azure report for rg-student-14

Region: eastus2

## Resources (2)
- ansible-vnet (Microsoft.Network/virtualNetworks)
- ansible-public-nsg (Microsoft.Network/networkSecurityGroups)

## Virtual networks
### ansible-vnet 10.20.0.0/16
Managed by: ansible
- ansible-public-subnet 10.20.1.0/24
- ansible-private-subnet 10.20.10.0/24
- ansible-mgmt-subnet 10.20.20.0/24

## Network security groups
### ansible-public-nsg (attached to 1 subnet(s))
Subnets: ansible-public-subnet
- 110 Inbound Allow Tcp/80 (allow-http)
- 120 Inbound Allow Tcp/443 (allow-https)
