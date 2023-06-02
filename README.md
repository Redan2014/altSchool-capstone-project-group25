## AltSchool Africa School of Cloud Engineering Capstone Project

Assume a role as part of the DevOps/Cloud/Infra team in a startup and are required to advise on the implementation of the startup's entire infrastructure. Things to consider:

- Security is paramount, so whatever decision you are making, you have to consider the security implications.

- Cost savings is critical, remember this is a startup without funding yet, so ensuring your implementation should be cost-effective.

- The whole infrastructure should be documented and reproducible using Infrastructure as code. I.e. If the need arises that the company needs to start all over, it should be possible with minimal effort

- Fast response time, your infrastructure should be built to be performant & scalable to accommodate growth

- Implement relevant regulatory & privacy requirements.





Your submission for this project should be in 2 parts:

- A detailed implementation plan including:

    - Pitch/Executive summary of the project idea to show an understanding of the problem being solved.

    - what service providers will you be using and why,

    - what services & technologies will you implement and why. Pay close attention here, you need to be conscious of what you are choosing and defend your choice.

    - Cost savings plan

    - Security plan

    - Architecture diagram

- Infrastructure as code implementation using

    - Terraform

    - Infracost.io to show cost configuration changes before implementation

    - CI implementation for continuous delivery of the entire infrastructure

    - Ansible (where used)

    - Kubernetes Manifests (where used)

    - Any other configuration used.

    - A sample application will be provided

- 5 teams of at least 2 People each are required to implement the solution

    - **CICD Team**: Responsible for DevSecOps strategy. The team is required to detail a deployment strategy for applications. The output of the team should include CICD configurations in the tool of choice and why the tool was chosen.

    - **Infrastructure engineers**: Responsible for designing the core infrastructure. The team will create the terraform configuration

    - **FinOps team**: Ensure cost savings from everything everyone else is implementing

    - **Configuration management**: Responsible for Configuration management

    - **SREs**: Responsible for the Site Reliability Strategy of the infrastructure
