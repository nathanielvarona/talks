---
marp: true
theme: default
# size: 4:3
size: 16:9
_class: invert
---

```code
   _____                          
  / ___/___  ______   _____  _____
  \__ \/ _ \/ ___/ | / / _ \/ ___/
 ___/ /  __/ /   | |/ /  __/ /    
/____/\___/_/    |___/\___/_/     
                                  
    ___        __    _ __            __                
   /   | _____/ /_  (_) /____  _____/ /___  __________ 
  / /| |/ ___/ __ \/ / __/ _ \/ ___/ __/ / / / ___/ _ \
 / ___ / /__/ / / / / /_/  __/ /__/ /_/ /_/ / /  /  __/
/_/  |_\___/_/ /_/_/\__/\___/\___/\__/\__,_/_/   \___/ 
```

## Cloud Server Infrastructure Management and Visualization <!--fit-->

The required strategies for managing the resources efficiently

---

## What is covered in the presentation?

* AWS Organization
    * Identity and Access Management (IAM)
    * Single Sign-On (SSO) with Google Workspace
* AWS Resources and Workloads
    * Applications
    * Data Processing
* Infrastructure Team Methodologies and Toolings
    * Graphical and Visualization Exchange
        * Slack
    * Documentation
        * Git Repository
        * Confluence
---

## AWS Organization

The foundation of a well-managed infrastructure


---

### Identity and Access Management (IAM)

Is a web service that helps you securely control access to AWS resources

---

#### Managing Organization Units (OUs)

`Scenario 1`
```code
Root OUs
├── Operations Management
├── Production
└── Development
```

`Scenario 2`
```code
Root OUs
├── Main OUs
│   └── Operations Management
├── Workloads OUs
│   ├── Production
│   └── Development
├── Business Intelligence OUs
│   └── Data Pipeline
└── Other Company Accounts OUs
    └── Data Source Account
```

---

#### Assume Role Across Organization Units Account

![w:1000](diagrams/aws_assume_role.jpg)


---

#### Google Workspace as an external identity provider for AWS SSO

![w:800 h:600](diagrams/G-Suite-AWS-SSO-Figure-1.png)

---

#### IAM and SSO in a Whole Picture

![w:900 h:600](diagrams/aws_org_iam_and_sso.jpeg)


---

## Orchestrated Services

### Amazon Kubernetes Service (Amazon EKS)
### Amazon Elastic Container Service (Amazon ECS)

---

#### Amazon Kubernetes Service (Amazon EKS)
![w:900](diagrams/provisioningamazoneksclusters-diagram1.png)


---

#### Amazon Elastic Container Service (Amazon ECS)

![w:900](diagrams/aws-ecs.png)
* EC2 Compute, or
* ECS/Fargate

---

## Microservice and Serverless Architecture

### Amazon ECS/Fargate
### Amazon Lambda

---

#### Amazon ECS/Fargate

![w:600](diagrams/ecs-fargate.png)

---

#### Amazon Lambda

![w:1000](diagrams/lambda-functions.png)

---

### Evolution of Software Architecture

![w:1000](diagrams/evolution-of-software-architecture.png)

---

### Example: Micro-Frontend Architecture

![w:700](diagrams/Microservices-backend-with-the-micro-frontends.jpeg)

---

### Example: Micro-Frontend UIs

![w:800 right](diagrams/micro-front-end-ui.png)


---

### Infrastructure Team Methodologies and Toolings

#### DEMO
