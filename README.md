# Terragrunt GCP Example
## Overview

`terragrunt-gcp-example` is a boilerplate project that provides a quick start for creating infrastructure on Google Cloud Platform (GCP) using Terraform and Terragrunt.

This project follows a modular structure to help you organize and manage your infrastructure code efficiently.

## Project Structure

The project is organized into several directories, each serving a specific purpose:

#### common

This directory contains common configurations and resources that are shared across environments.

`mysql.hcl`: Terragrunt configuration file for the MySQL module in the common directory.

#### modules

This directory holds reusable Terraform modules that can be used across environments.

mysql:
    `main.tf`: The main Terraform configuration file for the MySQL module.
    `outputs.tf`: Definition of output variables for the MySQL module.
    `vars.tf`: Declaration of input variables for the MySQL module.

#### non-prod

This directory includes configurations specific to non-production environments.

`account.hcl`: Terragrunt configuration file specifying non-production account details.

`region/env.hcl`: Terragrunt configuration file for the development environment.

`region/region.hcl`: Terragrunt configuration file specifying the GCP region for non-production environments.

`region/mysql/terragrunt.hcl`: Terragrunt configuration file for managing the MySQL module in the development environment.


### terragrunt.hcl

The root Terragrunt configuration file that defines the variables and configurations for the entire project.

## Getting Started

Follow these steps to get started with your infrastructure:

1. Update the `terragrunt.hcl` file at the project root with your GCP credentials and other configuration details.

2. Customize the Terraform module configurations in the modules directory to suit your specific requirements.

3. Adjust the environment-specific configurations in the non-prod directory based on your needs.

4. Run Terragrunt commands to plan and apply the infrastructure changes.

## Contributing

We welcome contributions! If you find any issues or have suggestions for improvements, feel free to open an issue or create a pull request.
License

This project is licensed under the MIT License.

Happy Terraforming!