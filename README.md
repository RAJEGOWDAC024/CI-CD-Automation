# 🚀 CI/CD Pipeline for Kubernetes Deployment and Testing of 5G Core

## 📌 Project Overview

This project demonstrates the implementation of a **5G Core network** using Open5GS and UERANSIM, integrated with **DevOps practices** such as Docker, Kubernetes, and CI/CD automation.

The goal is to automate the deployment and testing of a virtualized 5G network.

---

## 🏗️ System Architecture

```
UERANSIM (UE + gNB)
        │
        ▼
   Open5GS 5G Core
        │
   Docker Containers
        │
   Kubernetes Cluster
        │
   CI/CD Pipeline (GitHub Actions)
```

---

## ⚙️ Technologies Used

* Open5GS (5G Core)
* UERANSIM (UE & gNB Simulator)
* Docker (Containerization)
* Kubernetes (Minikube)
* GitHub Actions (CI/CD)

---

## 📂 Project Structure

```
.
├── Dockerfile
├── k8s/
│   ├── deployment.yaml
│   └── service.yaml
├── scripts/
│   ├── deploy.sh
│   ├── test.sh
│   └── cleanup.sh
├── .github/
│   └── workflows/
│       └── cicd.yml
└── README.md
```

---

## 🚀 Setup Instructions

### 1. Clone Repository

```
git clone https://github.com/your-username/your-repo.git
cd your-repo
```

### 2. Build Docker Image

```
docker build -t open5gs-core .
```

### 3. Start Minikube

```
minikube start
```

### 4. Deploy to Kubernetes

```
kubectl apply -f k8s/
```

### 5. Verify Deployment

```
kubectl get pods
kubectl get services
```

---

## 🔄 CI/CD Pipeline

The pipeline is implemented using GitHub Actions and performs:

* Build Docker image
* Deploy to Kubernetes
* Run test scripts

Workflow file:

```
.github/workflows/cicd.yml
```

---

## 🧪 Testing

Run:

```
bash scripts/test.sh
```

Checks:

* UE registration
* Network connectivity
* Core functionality

---

## 🧹 Cleanup

```
bash scripts/cleanup.sh
```

---

## ⚠️ Challenges Faced

* Open5GS configuration errors
* UE registration issues
* Kubernetes service exposure problems
* CI/CD debugging

---

## 📈 Results

* Successful 5G Core deployment
* UE registration completed
* CI/CD pipeline working
* Scalable Kubernetes deployment

---

## 🔮 Future Scope

* Cloud deployment (AWS/Azure)
* Network slicing implementation
* Security enhancements
* Large-scale deployment

---

## 👤 Author

Rajegowda C
USN: 1CG22CS128

---

## ⭐ Acknowledgment

Thanks to my mentors and organization for their guidance and support.
