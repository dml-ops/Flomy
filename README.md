# DML Terraform Modules Project

Welcome to the DML Terraform Modules repository. This project is engineered to provide a robust, highly modular approach to Infrastructure as Code using Terraform, paired with a powerful GitHub Actions automation pipeline designed for seamless cloud provisioning and deployment.

## Project Overview

Managing modern cloud infrastructure requires clean separation of concerns, reusability, and automated verification. This repository structures infrastructure code into distinct modules for compute and networking while integrating automated deployment workflows using GitHub Actions. It is optimized for Microsoft Azure environments, ensuring reliable, scalable, and secure resource management.

## Project Structure

The repository is thoughtfully organized to separate orchestration logic from modular components:

* root/
* .github/workflows/: Houses pipeline configurations, including Flomy.yml for automated CI/CD processes.


* modules/: Contains reusable infrastructure blocks.


* compute/: Modular definitions for virtual machines, compute instances, and related configurations.


* network/: Modular definitions for virtual networks, subnets, and routing configurations.




* main.tf: The primary entry point for resource orchestration at the root level.


* variables.tf: Global variable declarations utilized across root module configurations.


* output.tf: Defines output values for tracking critical infrastructure attributes after deployment.


* backend.tf: Configures remote state management for safe team collaboration.


* terraform.tfvars: Holds environment specific variable definitions.


* .gitignore: Defines excluded files and directories (such as local state files and terraform locks) from version control.





## Technologies Used

* Terraform: Industry standard Infrastructure as Code software tool by HashiCorp to build, change, and version cloud infrastructure safely and efficiently.


* Microsoft Azure: The primary target cloud platform providing scalable compute, network, and storage capabilities.


* GitHub Actions: CI/CD orchestration tool handling pipeline execution, testing, and automated deployment tasks.


* Nginx: High performance web server configured via automation scripts to host applications.


* Git and GitHub: Version control system for tracking codebase changes and remote collaboration.



## Main Features

* Modular Architecture: Reusable compute and network modules prevent code duplication and enforce consistency across different environments.


* Automated Deployment Pipelines (Flomy.yml): Automatically provisions, clones, and deploys application code directly onto infrastructure targets.


* Integrated Web Hosting Support: Configures Nginx automatically during workflow execution to serve web payloads smoothly.


* State Management Safeguards: Utilizes isolated state backups and ignore rules to prevent sensitive credential or lock file leaks.



## Detailed Setup Instructions

Follow these step by step instructions to get your environment running locally and connect it to your cloud provider:

1. Clone the Repository:
```bash
git clone https://github.com/dml-ops/Flomy.git
cd dmlterraform-modules

```


2. Configure Environment Variables:
Update your terraform.tfvars file with your specific Azure subscription IDs, region preferences, and access credentials.


3. Initialize Terraform:
Download required providers and set up your local backend modules:


```bash
terraform init

```


4. Validate the Configuration:
Ensure syntax and module references are error free:


```bash
terraform validate

```


5. Review the Deployment Plan:
Inspect the actions Terraform will take against your cloud provider:


```bash
terraform plan

```


6. Apply the Infrastructure:
Execute the provisioning workflow:


```bash
terraform apply

```



## Workflow Usage Guide (Flomy.yml)

The automated workflow defined in the project streamlines the software release lifecycle. Here is how the pipeline operates when triggered:

1. Environment Setup: The workflow provisions runner steps, checking out dependencies and confirming proper environmental configurations.


2. Site Installation and Configuration: Executes system commands to install necessary packages, configure Nginx, and pull the latest codebase (such as cloning the Sweet Bakery application repository via git clone).


3. Service Restart: Safely restarts the Nginx web service to apply fresh code changes immediately.


4. Execution Summary: Automatically writes confirmation messages and tracking logs directly to the GitHub Actions workflow summary dashboard.



[Insert Image Placeholder Here]
![Project Dashboard Architecture](./assets/Screenshot-2026-08-10-173545.png) 
---

Created by Ademola Adebayo



