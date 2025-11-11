# cloudpipeline-Kerry
CI/CD test – added by Kerry
# 🌥️ CloudTopia CI/CD Pipeline – Kerry Rocher

This project demonstrates a CI/CD pipeline using **Azure Bicep** and **GitHub Actions**.  
Each time I push a code update to my repository, the pipeline automatically validates my Infrastructure-as-Code (IaC) to make sure it’s correct before deployment.

---

## 🧰 Tools Used
- **Cloud Provider:** Microsoft Azure  
- **IaC Tool:** Azure Bicep  
- **CI/CD Tool:** GitHub Actions  
- **Testing Environment:** Azure Cloud Shell  

---

## 🧱 What My Infrastructure Includes
- 1 Virtual Network (VNet)  
- 1 Subnet  
- 1 Network Interface (NIC) + Public IP  
- 1 Ubuntu Virtual Machine (VM)  
- Optional setup script to install NGINX web server

---

## ⚙️ How the Pipeline Works
1. I create or edit my `main.bicep` file inside the `iac` folder.  
2. I push the changes to GitHub.  
3. GitHub Actions automatically runs a workflow that:  
   - Installs the Azure CLI  
   - Builds and validates the Bicep template (`az bicep build --file main.bicep`)  
4. The workflow reports success or failure directly in the Actions tab.  
5. (Optional) It can later be extended to deploy the resources automatically.

---

## 🧠 Why This Project Matters
This project shows how **automation** and **continuous integration** can simplify cloud infrastructure management.  
Instead of validating manually, GitHub now checks my code automatically—just like a real DevOps team would do in production.

---

## 🗺️ Basic Architecture Diagram
