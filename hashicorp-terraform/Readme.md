Hashicorp - Terraform Associate

-> Infrastructure as Code

	i. Declarative - (we specify only how final state looks like in code , not by imperative or how to reach the final step) - Terraform will interpret the configuration.
		benefits - Simplicity , Idempotency ( applying the same configuration multiple times result in same state) , Automation (tool handles the sequences of action).
	ii. Cloud agnostic  - can be used to manage multiple cloud providers in a consistent manner.

-> Declarative vs Idempotent

Exam about :

1. IaC - basic & concepts
2. Purpose of Terraform
3. Terraform Basics
4. Outside workflow
5. Terraform modules
6. Terraform workflow
7. Implement & Maintain state
8. Read , Generate & Modify configuration
9. Understand Terraform cloud capabilities.

1. Why terraform demands ?  
   i. Prefers developers role - automating infrastructure -
   ii. designing & iterating end-to-end infrastructure lifecycle -
   iii. working with multiple cloud.

> Problem with manual configuration - **human error** (mis configure) , **hard to manage the expected state** , **hard
to transfer configuration knowledge.**

> IaC -  **configuration script to automate** Creating, Updating or Destroying cloud infrastructure. (**Blueprint**,
> allows to share version or inventory)

> Infrastructure life cycle - plan , design , build , test , deliver , maintain & retire - SDLC

> Provisioning , Deployment , Orchestration

> Configuration Drift - when you provisioned server and there is **(unexpected) change in configuration due to**
> i. Manually adjusting configurations
> ii. Malicious actors (breach data)
> iii. Side effects from SDK,API , CLI

> configuration drift **result in interruption of services or unexpected downtime.**

> Terraform encourage Immutable Infrastructure architecture.

> Hashicorp - open source / cloud - unified portal to maintain & manage

> Terraform Life cycle <br>

1. code - write terraform configuration file<br>
2. init - initialize provider (project) - pull latest provider / modules<br>
3. plan - speculate what will change or generate an execution plan<br>
4. validate - ensure type & values are valid (attributes are present)<br>
5. apply - execute the terraform plan to provision the infrastructure<br>
6. destroy - destroy the remote infrastructure.<br>
   <br>

> Change Automation (change management) - "way automatically creating consistent/systematic/predictable" way of managing
> change request via control & policies.
> i. Execution plans - manual review what will change/add/destroy before you apply.
> ii. Resource graphs - terraform build "dependency graph from the configuration files and walks into this graph to
> generate plan/refresh state/...."

ChangeSet - commits changed over time in repository.

Terraform knows what changes exactly and in what order to execute , avoiding human errors.


> **Terraform core split into 2 main parts**
> i. Terraform core - use rpc to communicate with terraform plugins
> Ii. Terraform plugins - expose an implementation for specific service or provisioner.


> **commands**

       1. terraform init - initialize project , download plugins, providers & modules
       2. terraform plan - speculate what will change , generate what gonna be executed 
       3. terraform apply - apply the plan created
       4. terraform destroy - destroy the infrastructure
       5. terraform fmt - format the terraform codes
       6. terraform local values - assigned once , used multiple times
       7. terraform variables - (input variable - specific that can be used to configure dynamically, variable - provide kore flexible definitions)
       8. terraform output - obtain information after provision infrastructure
       9. Divide into multiple files
       10. provider.

> Terraform Provisioner - install s/w , edit files & provision machines created with terraform

Ex : user-data in aws when instance launches

a. cloud-init - cross platform cloud instance initialisations. (Tool to configure machine instance at boot time)
b. packer - automated image-builder service  (tool to create machine image with predefined configuration)



> Terraform null_resource (does not provision any real infrastructure , to execute and manage independently) vs <br>
> data sources - to retrieve the existing infrastructure that is external to terraform or managed by other
> configuration - read-only help/use information that already exist. 









