# Iapetus
Mission statement: to create a project that enables users to post and track their triathlon training records on a single AWS EC2 instance using Docker with MySQL and Tomcat is a great idea. Below, I'll outline the project structure, key components, and steps to get started.

**Project Overview**

**Project Name:** Triathlon Training Tracker

**Objective:** Build a web-based platform where triathletes can log and monitor their training activities across swimming, biking, and running, including metrics like maximum heart rate, distance, and time.

**Key Features**

- **User Account Management:** Register, login, and manage user profiles.
- **Training Log:** Users can add and view their training records for swim, bike, and run.
- **Metrics Tracking:** Record distance, time, and maximum heart rate for each activity.
- **Data Visualization:** Graphs and statistics displaying progress over time.
- **Mobile Responsiveness:** Ensure the web interface is usable on both desktops and mobile devices.

**Technology Stack**

- **Frontend:** Basic HTML, CSS, and JavaScript for UI; you can opt for frameworks like React or Angular for more dynamic content.
- **Backend:** Java with Spring Boot framework, providing RESTful services.
- **Database:** MySQL to store user data and training logs.
- **Server:** Apache Tomcat as the servlet container for deploying the Java web application.
- **Containerization:** Docker for MySQL and Tomcat.
- **Infrastructure Management:** Terraform for provisioning and managing AWS resources.
- **Cloud Platform:** AWS EC2 instance to host the entire application.

**Development Steps**

1. **Design the Database Schema**
    - **Users Table:** UserID, Username, Email, Password, Date Registered
    - **Training Records Table:** RecordID, UserID, Activity Type (Swim, Bike, Run), Distance, Time, MaxHR, Date
2. **Set Up the Development Environment**
    - Install Docker on your development machine.
    - Pull the official MySQL and Tomcat images from Docker Hub.
    - Set up local MySQL and Tomcat containers for development.
3. **Develop the Application**
    - **Backend:** Use Java Spring Boot to create API endpoints for user management and training logs.
    - **Frontend:** Develop simple HTML forms and pages to interact with the backend APIs.
    - Implement basic authentication and session management.
4. **Dockerize the Application**
    - Create a Dockerfile for the Spring Boot application to run in a Tomcat container.
    - Configure Docker Compose to manage both Tomcat and MySQL containers together.
5. **Write Terraform Scripts**
    - Write Terraform scripts to provision an AWS EC2 instance.
    - Use Terraform to set up security groups, IAM roles, and other necessary AWS resources.
    - Ensure the EC2 instance is properly configured to run Docker containers.
6. **Deploy and Test**
    - Deploy your application using Terraform to AWS.
    - Perform thorough testing to ensure everything works as expected, focusing on functionality, security, and responsiveness.
7. **Monitoring and Maintenance**
    - Set up basic monitoring and logging to keep track of the application’s performance and health.

**Additional Considerations**

- **Security:** Implement HTTPS, secure Docker configurations, and safe API practices.
- **Scalability:** Although running on a single EC2 instance, design the application to scale horizontally should you choose to expand.
- **User Experience:** Focus on creating a seamless and friendly user interface.
- **Data Protection:** Ensure compliance with data protection laws, particularly if storing personal health information.