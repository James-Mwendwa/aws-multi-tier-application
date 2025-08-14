## Create Docker Container Images locally

```bash
docker build -t backend:v1 .
docker build -t web-app:v1 .
```

## Setup AWS ECR to Push Docker Images

## Setup Network (VPC, Subnets, Route Tables, NAT Gateway, Internet Gateway)

To isolate infrastructure to private and public subnets

1. Create a Virtual Private Cloud(VPC)

- Name of the VPC
- Region where the VPC will live
- IP range in the CIDR notation to determine size of the network

2. Create Subnets

- It's a range of IP addresses in your VPC
- Must reside in a single Availability Zone(AZ)
- Private subnets for EKS worker nodes
- Public subnets for web tier

3. Route Tables

- They define routes to IGW & NAT
- Each Subnet must be associated with a Route Table

4. Security Groups(SGs)

- Act as virtual for your EC2 instances
- Control inbound and outbound traffic at the instance level
- Define rules to deny or allow traffic based on protocols, ports and source
- Everything is blocked by default

5. Network Access Control Lists(ACLs)

- Control inbound and outbound traffic for the entire subnet
- Everything is allowed by default
