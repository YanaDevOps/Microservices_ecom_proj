# Ecommerce Pet Project
![Docker](https://img.shields.io/badge/Docker-ready-blue?logo=docker)
![Node.js](https://img.shields.io/badge/Node.js-14.x-green?logo=node.js)
![Java](https://img.shields.io/badge/Java-8-orange?logo=java)
![Angular](https://img.shields.io/badge/Angular-12-red?logo=angular)
![MySQL](https://img.shields.io/badge/MySQL-8.0-blue?logo=mysql)
![NGINX](https://img.shields.io/badge/NGINX-proxy-green?logo=nginx)
![AWS EC2](https://img.shields.io/badge/AWS-EC2-orange?logo=amazon-aws)

## 📋 Description
Microservices_ecom_proj is a microservices-based e-commerce application built with a modern technology stack. The project demonstrates an architecture with separate services for frontend, backend, database, and an API gateway using NGINX.

It is containerized with Docker and managed using Docker Compose to ensure seamless deployment and scaling. The application is hosted on an AWS EC2 instance.

## 🛠️ Technologies Used
* Frontend: Angular 12
* Backend: Node.js, Java Spring Boot
* Database: MySQL, MongoDB
* API Gateway: NGINX
* Containerization: Docker, Docker Compose
* Cloud Deployment: AWS EC2

## 📂 Project Structure
```
├── client/          # Angular frontend
├── nodeapi/         # Node.js API
├── javaapi/         # Java Spring Boot API
├── nginx/           # NGINX configuration
├── docker-compose.yaml  # Docker Compose configuration
└── EC2inst_script.sh # EC2 instance launch script (Docker installation)
```

## 🚀 How to Run the Project?
  ### 📑 1. Local Deployment with Docker Compose
  1. Clone the repository:
  ```
  git clone https://github.com/YanaDevOps/Microservices_ecom_proj.git
  cd Microservices_ecom_proj
  ```

  2. Start all services:
  ```
  docker-compose up --build
  ```

  3. Access the frontend in your browser:
  ```
  http://localhost:80
  ```
  ### ☁️ 2. Deployment on AWS EC2
  1. Launch an Ubuntu-based EC2 instance on AWS.
  2. Copy EC2inst_script.sh to the instance.
  3. Run the script to set up Docker and the application:
  ```
  sudo bash EC2inst_script.sh
  ```
  4. Access the application via the public IP of the EC2 instance.

## 📊 Project Architecture
1. Frontend (Angular): Handles user interactions and UI components.
2. Backend (Node.js & Java Spring Boot): Processes business logic and API requests.
3. Database (MySQL, MongoDB): Manages persistent data storage.
4. NGINX: Acts as a reverse proxy for efficient routing of requests.

### 🤝 How to Contribute
1. Fork the repository.
2. Create a feature branch:
```
git checkout -b feature-branch
```
3. Commit your changes:
```
git commit -m "Add new feature"
```
4. Push to your fork:
```
git push origin feature-branch
```
5. Open a Pull Request on GitHub.

### Author
Name: Yana Lysenko

GitHub: [YanaDevOps](https://github.com/YanaDevOps)