# AltSchool Africa School of Cloud Engineering Capstone Project; Group 25

## Project Title: A Food Delivery Web Application
The project we worked on was deploying and maintaining a react-js-food-delivery web application.

The link to the source code for the web application can be found at: https://github.com/fahadahmed07/react-js-quick-food-delivery-website

Our project aims to deploy a cutting-edge React.js food delivery web application that will revolutionise how people experience food delivery. With a focus on seamless user experience, robust features, and efficient delivery logistics, the application will connect hungry customers with their favourite restaurants, providing a delightful and convenient dining experience.

## Key Features and Benefits of our web app:
- User-friendly Interface: The React.js application will provide an intuitive and visually appealing interface.
- Extensive Meal Selection: The application will offer a wide range of meal options, catering to various cuisines and dietary preferences. 
- Efficient Order Management: With the application, users will have complete control over their orders, including customization options, real-time tracking, and delivery notifications. 
- Easy accessibility: Distribution over auto-scaled web servers to allow for easier handling of traffic from customers.

## Deployment Process
To deploy the React.js food delivery web application, we leveraged cloud infrastructure services for scalability, availability, and cost-effectiveness. We will utilize the following services and technologies for this project.

- We will be using AWS for its wide range of services and familiarity purposes of the platform. First and foremost, AWS offers an extensive range of services that align perfectly with our project requirements. With AWS, we have access to a comprehensive suite of cloud-based solutions, including compute resources, storage options, networking capabilities, security tools, and many more. 

- Cost-effectiveness is also a crucial consideration for our startup. AWS offers flexible pricing models, allowing us to optimize costs based on our usage patterns and requirements. We leveraged features such as reserved instances, spot instances, and auto-scaling to control expenses while ensuring our infrastructure remains efficient and scalable.

- By leveraging AWS, we took advantage of the global infrastructure, ensuring that the application can serve users from various regions with minimal latency and downtime. Finally, familiarity plays a significant role in our choice. Many members of our team already have experience working with AWS, which translates into a smoother transition and faster development process. This familiarity allows us to leverage our existing knowledge and skills, ensuring efficiency and reducing the learning curve associated with new platforms.

## What services & technologies were implemented and why? 
- Database: Amazon DynamoDB.<br>
We utilized Amazon DynamoDB as a cloud-based database service to store and manage the application's data securely. This service provides automated backups, high availability, and scalability.

- Infrastructure as Code: Terraform<br>
We adopted Terraform for Infrastructure as Code (IaC) purposes as this allowed us to quickly provision and manage our cloud resources. This approach ensures reproducibility, scalability, and consistency. Terraform focuses on the infrastructure lifecycle (provisioning, updating, and destroying resources) or handling the initial infrastructure setup, such as creating VPCs, subnets, and instances.

- Configuration Management: Ansible<br>
Ansible, which is also considered an IAC, was used for our configuration management. Ansible was used to take care of installing packages, configuring software, and deploying the application code.

- CI/CD: Jenkins<br>
Jenkins is a popular open-source automation server that supports building, testing, and deploying software applications. It was used to implement continuous integration of the code and continuous delivery of the web app to the users

- Monitoring: Prometheus<br>
Prometheus is designed to handle high-scale monitoring environments and also integrates with service discovery mechanisms, thereby enabling automatic discovery and monitoring of new instances as the infrastructure platforms we are using are scaled up or down. Prometheus was also implemented to carry out monitoring and real-time evaluation of metrics, logs and notifications from the web app.

- logging: Grafana<br>
Grafana works seamlessly with Prometheus to allow us to implement interactive and customizable visual representations of metrics and logs, making it easier to understand and analyze the system's behaviour.

## Project Architectural Diagram

The Architectural diagram for this project was done using a Lucid chart.

![Architectural diagram for Capstone Project](https://github.com/Redan2014/altSchool-capstone-project-group25/blob/main/Capstone%2025.png)
