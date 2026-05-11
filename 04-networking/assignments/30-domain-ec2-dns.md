# NGINX on AWS EC2 + Cloudflare

![AWS](https://img.shields.io/badge/AWS-EC2-orange)
![Cloudflare](https://img.shields.io/badge/Cloudflare-F38020?logo=cloudflare&logoColor=white)
![NGINX](https://img.shields.io/badge/NGINX-009639?logo=nginx&logoColor=white)

<p align="center">
  <img width="1000" alt="Architecture Diagram" src="images/Website_NGINX_Image.png" />
</p>

---

## Overview

This assignment brings together core networking concepts including IP addressing, DNS resolution, ports, and routing.

The objective is to deploy a web server on an EC2 instance and expose it to the internet using a custom domain name.

By completing this project, the setup simulates how real-world services are hosted and accessed across cloud infrastructure.

---

## Objective

The goal of this project was to:

- Launch and configure an AWS EC2 instance
- Install and configure NGINX
- Understand HTTP traffic and port 80
- Configure DNS using Cloudflare
- Route traffic from a custom domain to an EC2 instance
- Build foundational cloud and networking knowledge
- Practice real-world troubleshooting and deployment workflows

---

# Architecture Diagram

<p align="center">
<img width="750" alt="Architecture Diagram" src="https://github.com/huss-osman/aws-ec2-nginx-cloudflare/blob/main/images/Architecture%20Diagram.png" />
</p>

---

# Registering the Domain

The custom domain was configured and connected through Cloudflare DNS.

<img width="1000" alt="Register Domain" src="images/Register_Domain.png" />

---

# Launching the EC2 Instance

An Ubuntu Server EC2 instance was launched using AWS Free Tier eligible settings.

Configuration included:

- Ubuntu 26.04 LTS
- t3.micro instance
- Public IP enabled
- Free Tier eligible AMI

<img width="1000" alt="EC2 Setup" src="images/Setting_Up_ec2.png" />

---

# Configuring Network Settings

Security Groups were configured to allow the correct inbound traffic.

Ports configured:

- SSH (22) → My IP only
- HTTP (80) → Anywhere
- HTTPS (443) → Anywhere

<img width="1000" alt="Network Settings" src="images/Network_Settings_ec2.png" />

> [!IMPORTANT]
> Port `22` was restricted to **My IP only** to reduce unauthorized SSH access attempts.

---

# Creating the SSH Key Pair

An ED25519 SSH key pair was generated for secure server access.

<img width="900" alt="Create Key Pair" src="images/Creating_Key_Pair.png" />

---

# Securing the Private Key

The private key permissions were restricted using `chmod 400`.

```bash
chmod 400 nginx-project-key.pem
```

<img width="800" alt="Key Permissions" src="images/Set_Correct_Permission.png" />

> [!IMPORTANT]
> `chmod 400` ensures the private SSH key can only be read by the current user.
>
> SSH clients will often refuse to use private keys with insecure permissions.

---

# Configuring Cloudflare DNS

A Cloudflare DNS A record was configured to point the subdomain to the EC2 public IP address.

<img width="1000" alt="Cloudflare DNS" src="images/DNS_Management_Cloudflare.png" />

Configuration used:

- Type: `A`
- Name: `nginx`
- Target: EC2 Public IPv4
- Proxy Status: Enabled

---

# Installing NGINX

NGINX was installed and enabled on the Ubuntu server.

```bash
sudo apt update
sudo apt install -y nginx
sudo systemctl enable nginx
sudo systemctl start nginx
```

## Command Breakdown

- `sudo apt update` → Refreshes the package index from Ubuntu repositories

- `sudo apt install -y nginx` → Installs the NGINX web server automatically

- `sudo systemctl enable nginx` → Enables NGINX to start automatically during boot

- `sudo systemctl start nginx` → Starts the NGINX service immediately

---

# Verifying NGINX Status

NGINX service status was checked using `systemctl`.

```bash
sudo systemctl status nginx
```

<img width="1000" alt="NGINX Status" src="images/Check_NGINX_System_Status.png" />

The output confirmed:

- NGINX was active
- The service was running successfully
- Worker processes were created correctly

---

# Testing Connectivity

## Ping Test

```bash
ping -c 4 nginx.osmanhus.co.uk
```

<img width="900" alt="Ping Test" src="images/Ping_NGINX_Connectivity.png" />

This confirmed the domain resolved successfully and packets reached the server.

---

## Traceroute Test

```bash
traceroute nginx.osmanhus.co.uk
```

<img width="900" alt="Traceroute" src="images/Traceroute_NGINX.png" />

This showed the network path packets traveled through before reaching the destination.

---

## DNS Lookup Test

```bash
nslookup nginx.osmanhus.co.uk
```

<img width="900" alt="NSLookup" src="images/Nslookup_NGINX.png" />

> [!NOTE]
> DNS commonly uses **Port 53** for queries and responses.
>
> The `#53` shown in the output indicates DNS communication occurring over Port 53.

The output confirmed:

- The domain resolved correctly
- Cloudflare DNS was working
- Multiple IPv4 and IPv6 addresses were returned

---

# Final Result

After configuration and troubleshooting, the NGINX web server became publicly accessible through the custom domain.

<img width="1000" alt="NGINX Website" src="images/Website_NGINX_Image.png" />

---

# Troubleshooting Lessons

Some issues encountered during deployment included:

- NGINX not running correctly
- DNS pointing to the wrong IP address

---

# Key Takeaways

- Learned how EC2 instances work in AWS
- Understood how Security Groups control inbound traffic
- Gained experience using Linux server management commands
- Learned how DNS records map domains to servers
- Practiced troubleshooting networking and connectivity issues
- Understood the relationship between Cloudflare, DNS, and web servers
