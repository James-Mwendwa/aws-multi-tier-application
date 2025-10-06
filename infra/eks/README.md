## EKS
AWS managed kubernetes service which manages deployments, scaling and networking of containerized applications

AWS manages/abstracts the Control Plane(API server, etcd, controller Manager etc.), you manage the Data Plane(Container runtime, kubelet and kube proxy).

## EKS COMPUTE OPTIONS
  
  ## Managed Node Groups
  - AWS creates and manages EC2 instances (worker nodes) for you; launches, updates and terminates EC2 worker nodes for you.
  
  ## Self Managed Node Groups (WE WILL USE THIS ONE FOR LEARNING PURPOSES)
  - You Install AMIs, patching OS, scaling up/down, and updating worker nodes.
  - AWS Only manages the Control Plane

  ## AWS Fargate (Serverless for EKS)
  - NO EC2 at all, AWS provisions Compute automatically


## EKS AUTO MODE
It's a new way to run Kubernetes where AWS automatically manages the Compute, Storage and Networking for your Pods.

  # KEY FEATURES
  - No node groups to manage → fully automated.
  - Supports GPUs → unlike plain Fargate.
  - Supports persistent storage (EBS/EFS) automatically.
  - Pod-level scaling → scales exactly to workload needs.
  - Pay-as-you-go → based on pod resources, not EC2 uptime.


# Multi-tier Project (Self Managed Node Groups)
- Compute/Worker Nodes - EC2
- Persistent Storage - EBS
- Services - Ingress Controller LoadBalancer
  
  # EKS SECURITY
  Inspector - Scan Docker Images
  Authentication - IAM roles
  Authorization - RBAC

  # Data Security
  - use namespaces
  - volume mounts are better than ENV
  - encrypt in transit and at rest
  - network security using SGs  