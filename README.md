# :earth_asia: Terraform a (Free) Micro Google VPS

## Pre-requisites

* Must have an active account on [Google Cloud Platform](https://console.cloud.google.com/) (Sign up or Sign in)
* Enable [Compute Engine](https://console.cloud.google.com/compute) after creating a project.
* Get Service Account Key - Navigate to the [Service Accounts page](https://console.cloud.google.com/iam-admin/serviceaccounts). Click "Create Service Account". Fill in the blanks, click "Create". Set Role as "Project > Editor", click "Done". Click the newly created account's Actions (far right) menu icon and select "Create Key". Set Key Type as "JSON" and click "Create". Once prompted for the JSON file to save, save it in this cloned repo on your machine.
* Install [Terraform v0.13.5 or later](https://www.terraform.io/downloads.html) - it's also available via [Chocolatey](https://chocolatey.org/packages/terraform)

## Setup

The `main.tf` file has a couple of places that needs an update before proceeding to *Usage* section.

Replace the following:

* **{PROJECTID}** - Obtainable after creating a project.

* **{CREDENTIALS}** - Obtainable after creating the service account

## Usage

### Test

Check if the file will load properly with `terraform plan`

### Deployment

`terraform apply`, then type `yes` when asked to approve the deployment.

### Destroy

When done for the day or no longer need a VM running, `terraform destroy`, then `yes` when prompted

## Further Reference

[Getting Started](https://registry.terraform.io/providers/hashicorp/google/latest/docs/guides/getting_started) with Google Provider

More about Terraform [Google Compute Instance](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance)