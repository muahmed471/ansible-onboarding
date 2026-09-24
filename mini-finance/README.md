# Mini Finance — Azure Infrastructure and Ansible Deployment

## Project Objective

The objective of this project is to provision an Ubuntu Virtual Machine in Microsoft Azure using Terraform and deploy the Mini Finance website using Ansible.

This project demonstrates Infrastructure as Code with Terraform, configuration management and application deployment with Ansible, and web server configuration using Nginx.

## Tools and Technologies

- Terraform
- Microsoft Azure
- Ansible
- Nginx
- Git
- rsync
- Ubuntu Linux

## Infrastructure Created

The following Azure infrastructure was created:

- Resource Group
- Virtual Network
- Subnet
- Network Security Group
- Public IP Address
- Network Interface
- Ubuntu Virtual Machine

The Azure VM is accessed securely from the Ansible controller using SSH key-based authentication.

## Ansible Deployment Workflow

The deployment was automated using an Ansible multi-play playbook.

### Play 1 — Install and Configure Nginx

- Updated the APT package cache.
- Installed Nginx, Git, and rsync.
- Started and enabled the Nginx service.

### Play 2 — Deploy Mini Finance Website

- Cloned the Mini Finance Git repository.
- Synchronized the website files to `/var/www/html/`.
- Set the website file ownership to `www-data`.
- Reloaded Nginx after deployment changes.

### Play 3 — Verify Deployment

- Verified the Mini Finance website from the Ansible controller.
- Confirmed that the website returned HTTP status code `200`.
- Used an Ansible assertion to confirm successful deployment.

## Verification

The deployment was verified in two ways:

1. Ansible performed an HTTP request against the deployed website.
2. The website was accessed through a web browser using the Azure VM public IP address.

The Ansible verification completed successfully with:

- HTTP status code: `200`
- Assertion: `All assertions passed`
- Failed tasks: `0`
- Unreachable hosts: `0`

## Challenge and Solution

One challenge during the deployment was the Git repository URL used in the Ansible playbook.

The original repository URL did not successfully provide the expected repository. Connectivity to GitHub was tested from the Azure VM using `git ls-remote`.

The repository URL was corrected to:

`https://github.com/pravinmishraaws/mini_finance`

After correcting the repository URL, the Ansible playbook successfully cloned the repository and completed the website deployment.

## What I Learned

This project helped me understand how Terraform and Ansible can be used together.

Terraform was used to provision the Azure infrastructure, while Ansible was used to configure the VM and automate the application deployment.

I also practiced:

- SSH key-based authentication
- Ansible inventory management
- Ansible playbooks and handlers
- Nginx configuration
- Git repository deployment
- rsync-based file synchronization
- Automated HTTP verification
- Terraform and Ansible infrastructure automation

## Deployment Result

The Mini Finance website was successfully deployed to the Azure Ubuntu Virtual Machine and verified using Ansible with HTTP status code `200`.
