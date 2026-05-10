# NGINX on AWS EC2 + Route 53

![AWS](https://img.shields.io/badge/AWS-EC2-orange)
![AWS](https://img.shields.io/badge/AWS-Route53-blue)
![NGINX](https://img.shields.io/badge/NGINX-009639?logo=nginx&logoColor=white)

---

<img width="1000" height="500" alt="networking-banner" src="YOUR_BANNER_IMAGE_LINK_HERE" />

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
- Configure DNS using Route 53
- Route traffic from a custom domain to an EC2 instance
- Build foundational cloud and networking knowledge
- Practice real-world troubleshooting and deployment workflows

---

# Architecture Diagram

<img width="1000" alt="architecture-diagram" src="YOUR_ARCHITECTURE_DIAGRAM_HERE" />

# Technologies Used

- AWS EC2  
- AWS Route 53  
- NGINX  
- Ubuntu Linux  
- SSH  
- DNS  
- HTTP  

---

# Getting a Domain

A custom domain was configured using Route 53.

The DNS records were used to map the domain name to the EC2 public IPv4 address.

<img width="1000" alt="route53-domain" src="YOUR_DOMAIN_SCREENSHOT_HERE" />

> [!IMPORTANT]
> DNS propagation can take several minutes depending on the provider and cached DNS records.

---

# Setting up the EC2 Instance

An EC2 instance was launched using Ubuntu Linux.

The instance was configured to allow:

- SSH traffic (port 22)
- HTTP traffic (port 80)

<img width="1000" alt="ec2-launch" src="YOUR_EC2_SETUP_SCREENSHOT_HERE" />

---

# Security Group Configuration

The Security Group was configured to allow inbound HTTP traffic so the NGINX web server could be accessed publicly.

| Type | Protocol | Port | Source | Purpose |
|---|---|---|---|---|
| SSH | TCP | 22 | My IP | Remote SSH access |
| HTTP | TCP | 80 | 0.0.0.0/0 | Public web traffic |

<img width="1000" alt="security-groups" src="YOUR_SECURITY_GROUP_SCREENSHOT_HERE" />

> [!NOTE]
> Port 80 is used for standard HTTP web traffic.

---

# Connecting via SSH

The EC2 instance was accessed securely using SSH and a `.pem` key pair.

Example SSH command:

```bash
ssh -i my-key.pem ubuntu@<EC2-Public-IP>
```

<img width="1000" alt="ssh-connection" src="YOUR_SSH_SCREENSHOT_HERE" />

---

# Installing and Starting NGINX

After connecting to the server, NGINX was installed and enabled.

## Commands Used

```bash
sudo apt update
sudo apt install -y nginx
sudo systemctl enable nginx
sudo systemctl start nginx
```

# Verifying NGINX Status

```bash
sudo systemctl status nginx
```

<img width="1000" alt="nginx-installation" src="YOUR_NGINX_INSTALL_SCREENSHOT_HERE" />

> [!TIP]
> `systemctl enable nginx` ensures NGINX starts automatically whenever the server reboots.


---

## Configuring DNS in Route 53

An A record was created in Route 53 pointing the domain to the EC2 public IPv4 address.

**Example:**

```bash
nginx.yourdomain.com → <EC2 Public IPv4>
```

<img width="1000" alt="route53-record" src="YOUR_ROUTE53_RECORD_SCREENSHOT_HERE" />

> [!NOTE]
> The A record maps a domain name directly to the EC2 instance’s public IPv4 address, allowing users to access the server using a readable domain instead of an IP address.

---

## How It Works

#### **1.** A user visits the custom domain

#### **2.** Route 53 resolves the domain name to the EC2 public IP

#### **3.** Traffic reaches the EC2 instance over HTTP (port 80)

#### **4.** NGINX serves the web page to the browser

#### **5.** The website becomes publicly accessible over the internet

---

# Testing DNS and Connectivity

To verify DNS resolution and connectivity, tools such as `nslookup` and `ping` were used.

### Commands Used

<img width="1000" alt="dns-testing" src="YOUR_NSLOOKUP_SCREENSHOT_HERE" />

```bash
nslookup nginx.yourdomain.com
```

<img width="1000" alt="dns-testing" src="YOUR_NSLOOKUP_SCREENSHOT_HERE" />

```bash
ping nginx.yourdomain.com
```

---

## Accessing the Website

Once DNS propagated successfully, the domain loaded the NGINX landing page in the browser.

<img width="1000" alt="nginx-landing-page" src="YOUR_WEBSITE_SCREENSHOT_HERE" />

> [!IMPORTANT]
> If the website does not load:
>
> - Verify Security Group rules  
> - Verify the Route 53 A record  
> - Confirm the EC2 public IPv4 address  
> - Check the NGINX service is running

---

## Troubleshooting

During the setup process, several common issues were identified and resolved.

### Issues Encountered

- HTTP traffic blocked due to missing Security Group rule  
- Incorrect public IPv4 address used in DNS configuration  
- NGINX service not running initially  
- DNS propagation delay after updating Route 53 records  

### Commands Used for Troubleshooting

```bash
sudo systemctl status nginx
curl localhost
ping nginx.yourdomain.com
nslookup nginx.yourdomain.com
```

<img width="1000" alt="troubleshooting" src="YOUR_TROUBLESHOOTING_SCREENSHOT_HERE" />

---

## What I Learned

Through this assignment, I gained hands-on experience with:

- AWS EC2 provisioning  
- Route 53 DNS configuration  
- Linux server administration  
- HTTP traffic flow  
- Public IP addressing  
- Security Groups and firewall rules  
- NGINX web hosting  
- SSH remote server management  
- Troubleshooting networking and DNS issues

---

## Project Structure

```text
Browser
   │
   ▼
Route 53 DNS
   │
   ▼
EC2 Public IPv4
   │
   ▼
NGINX Web Server
   │
   ▼
Website Response
```

---

# Repository Screenshots

## AWS Console

<img width="1000" alt="aws-console" src="YOUR_AWS_CONSOLE_SCREENSHOT_HERE" />

---

## EC2 Dashboard

<img width="1000" alt="ec2-dashboard" src="YOUR_EC2_DASHBOARD_SCREENSHOT_HERE" />

---

## Route 53 Records

<img width="1000" alt="route53-dashboard" src="YOUR_ROUTE53_DASHBOARD_SCREENSHOT_HERE" />

---

## Final Website

<img width="1000" alt="final-website" src="YOUR_FINAL_WEBSITE_SCREENSHOT_HERE" />

