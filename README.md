# Xen Orchestra Terraform Modules

This repository contains a collection of Terraform modules designed to simplify the deployment and management of Xen Orchestra resources. 
These modules provide reusable and configurable components to integrate Xen Orchestra into your infrastructure as code workflows.

## Submodules

- xo-wait-for-vm-ip: wait for the REST API to return the VM main IP address.
- xo-wait-for-xenstore: wait for the VM XenStore data to match a specified value (using the REST API to pool the data).

## What's a Terraform Module?

A Terraform Module refers to a self-contained packages of Terraform configurations that are managed as a group. 
This repo is a Terraform Module and contains many "submodules" which can be composed together to create useful infrastructure patterns.



## License

This project is licensed under the MIT License. See the [LICENSE](./LICENSE) file for details.