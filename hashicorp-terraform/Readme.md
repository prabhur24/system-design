Hashicorp - Terraform Associate


Infrastructure as Code

	i. Declarative - (we specify only how final state looks like in code , not by imperative or how to reach the final step) - Terraform will interpret the configuration.
		benefits - Simplicity , Idempotency ( applying the same configuration multiple times result in same state) , Automation (tool handles the sequences of action).
	ii. Cloud agnostic  - can be used to manage multiple cloud providers in a consistent manner.


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

1. Why terraform demands  ?  Prefers develops role - automating infrastructure -  designing & iterating end-to-end infrastructure lifecycle -  working with multiple cloud.


> Problem with manual configuration - human error (mis configure) , hard to manage the expected state , hard to transfer configuration knowledge.

> IaC -  configuration script to automate Creating, Updating or Destroying cloud infrastructure. (Blueprint, allows to share version or inventory)

> Infrastructure life cycle - plan , design , build , test , deliver , maintain & retire - SDLC

> Provisioning , Deployment , Orchestration

> Configuration Drift - when you provisioned server and there is (unexpected) change in configuration due to
i. Manually adjusting configurations
ii. Malicious actors
Iii. Side affects from SDK,API , CLI


> Terraform encourage Immutabel Infrastructure architecture.

> Hashicorp - open source / cloud - unified portal to maintain & manage

> Terraform Life cycle
1. code - write terraform configuration file
2. init - initialize provider (project) - pull latest provider / modules
3. plan - speculate what will change or generate a execution plan
4. validate - ensure type & values are valid (attributes are present)
5. apply - execute the terraform plan to provision the infrastructure
6. destroy -  destroy the remote infrastructure.

