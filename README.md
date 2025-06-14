# Kubernetes-docker
A Fullsatck MERN stack application containerized with Docker, featuring CI/CD automation for building and pushing Docker images to Docker Hub, and ready for Kubernetes deployment. Includes example configuration files for GitHub Actions and Kubernetes manifests.

## Features
- **Responsive Design**: Works seamlessly across devices of all sizes.
- **Project Showcase**: Highlights completed and ongoing projects.
- **Automated Deployment**: Integrates CI/CD for efficient updates and builds.

---

## Technologies
- **Frontend**: React.js
- **Database**: MongoDb
- **Containerization**: Docker
- **Orchestration**: Kubernetes
- **CI/CD Pipeline**: GitHub Actions
- **Hosting**: Render

---

## CI/CD Pipeline
This project uses a CI/CD pipeline to automate the build and deployment process:
1. **Push Code**: GitHub Actions is triggered whenever code changes are pushed to the repository.
2. **Build Docker Image**: The pipeline automatically builds the updated Docker image.
3. **Push to Docker Hub**: The image is pushed to Docker Hub (`chibuzor1/dapp3:latest`) for easy access.
4. **Deploy**: The latest image is pulled and deployed to Render or Kubernetes.

This process ensures seamless updates and reliable deployments.

---

## Kubernetes Deployment
If you want to deploy this project using Kubernetes, follow these steps:

1. **Ensure Minikube or Kubernetes is Set Up**:
   - Install Minikube by downloading from official website or use a managed Kubernetes cluster.
   - Link: [🔗 Minikube](https://minikube.sigs.k8s.io/docs/start/)
   - Add folder to System Environment variables under Path.

2. **Docker Desktop**:

   - Install Docker Desktop by downloading it from Docker's official website.

   - Once installed, open Docker Desktop and ensure it is running. Set Docker as the default driver for Minikube:
   ```
   minikube config set driver docker
   ```
3. **kubectl (Kubernetes CLI)**:

   - Install kubectl by following the instructions for your operating system from the official Kubernetes website and add folder to system variables under Path.

   - Link: [🔗 Kubectl](https://kubernetes.io/docs/tasks/tools/)

   - Verify the installation by running:
   ```
   kubectl version --client
   ```

4. **Start Minikube**:
   ```bash
   minikube start
   ```
5. **Apply the Kubernetes Manifests: Deploy the resources defined in the YAML files:**
   ```
    kubectl -- apply -f K8s/configmap.yaml
    kubectl -- apply -f K8s/secrets.yaml
    kubectl apply -f K8s/deployment.yaml
    kubectl apply -f K8s/service.yaml
   ```
   ## OR
   ```
    kubectl apply -f k8s/
   ```
6. **Check the Pods and Services: Verify that the pods are running and the service is active:**
   ```
    kubectl get pods
    kubectl get service
   ```
7. **Access the Application:**
   - If using Minikube, expose the service and open it in your browser:
   ```
    minikube service mern-app-service
   ```
   - For external clusters, use the external IP provided by the service.



## Installation
To run the project locally:
1. Clone the repository:
   ```bash
   git clone https://github.com/CHIBUZOR-1/Kubernetes-docker.git
   ```
2. Navigate to the project directory:
   ```
   cd portfolio-app
   ```
3. Build the Docker
   ```
   docker build -t your-dockerhub-username/dapp3:latest .
   ```
4. Run The Docker Container:
   ```
   docker run -p 80:80 your-dockerhub-username/dapp3:latest
   ```
5. Push the Docker Image to Docker Hub
   ```
   docker push your-dockerhub-username/dapp4:latest
   ```
## Contribution
1. Fork the repository.
2. Create a new branch:
   ```
   git checkout -b feature-name
   ```
## License
This project is licensed under the MIT License. See the LICENSE file for details.


---

### **What's New?**
- **Kubernetes Deployment**: Detailed steps for deploying using the `K8s` folder.
- **Commands**: Includes essential commands for Minikube or Kubernetes users.
- **Access Instructions**: Clarifies how users can access the application after deployment.

This updated README should provide clear and thorough guidance for anyone cloning your repo and experimenting with Kubernetes. Let me know if there’s anything else you’d like to tweak! 🚀✨