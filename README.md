#  GDG Algiers GLP Blockchain 

## 🔗 Workshop Title: Building Smart Contracts with Solidity & Foundry

## 👨‍🏫 Instructor: [Lyes Boudjabout](https://www.linkedin.com/in/lyes-boudjabout)
## 🎥 Recording: [Link to Session](https://glp.gdgalgiers.dev/content)

🚀 Smart contract development lessons using Solidity and Foundry, built for the **GDG Algiers Learning Platform (GLP)**.  

---

## 📚 Overview  
This repository is part of the **GDG Algiers Learning Platform** initiative.  
It provides hands-on lessons and practical examples to help learners understand the fundamentals of **blockchain development** through **Solidity** and **Foundry**.  

The lessons are designed to be accessible for beginners while offering deeper insights for developers aiming to strengthen their skills in **smart contract development**.  

---

## 🛠️ Tech Stack  
- **Solidity** – Smart contract programming language  
- **Foundry** – Smart contract testing, debugging, and deployment framework  
- **Ethereum** – Blockchain execution layer  

---

## 📂 Repository Structure  
```
gdg-algiers-glp-blockchain/
│── Intro to Solidity/     # Introductory Solidity examples and contracts
│    │── contracts/        # Solidity contract files for learning purposes  
│── Ressources/            # Workshop materials and ressources 
│── script/                # Deployment and interaction scripts  
│── src/                   # Main contract source files for the project 
│── test/                  # Test cases for contracts using Foundry
│── .env.example           # Example environment variables (with Anvil deployment guide)
```

---

## 🚀 Getting Started  

### 1️⃣ Prerequisites 

Make sure you have the following installed:  
- [Foundry](https://book.getfoundry.sh/getting-started/installation)
- [Git](https://git-scm.com/downloads)

### 2️⃣ Installation 

Clone the repository: 

```bash
git clone https://github.com/Lyes-Boudjabout/gdg-algiers-glp-blockchain.git
cd gdg-algiers-glp-blockchain
```

Install dependencies (if any):  

```bash
forge install openzeppelin/openzeppelin-contracts
```

### 3️⃣ Running Tests  

```bash
forge test
```

### 4️⃣ Deploying Contracts 

```bash
forge script script/Deploy.s.sol --rpc-url <RPC_URL> --private-key <PRIVATE_KEY>
```

---

## 🎯 Learning Outcomes  

By the end of this module, learners will:  
- Understand the **basics of Solidity** syntax and smart contract structure  
- Learn how to **write, compile, and deploy** smart contracts  
- Use **Foundry** for testing and debugging  
- Gain confidence in **blockchain development workflows**  

---

## 📚 Workshop Resources: Building Smart Contracts with Solidity & Foundry

Welcome to the resources hub for this workshop. Below you’ll find curated references, guides, and tools to help you deepen your understanding of Solidity development and Foundry usage.

──────────────────────────────────────────────

### 🔹 Resources Links

──────────────────────────────────────────────
- Solidity Docs: https://docs.soliditylang.org/
- Foundry Book: https://book.getfoundry.sh/
- Foundry Cheatsheet: https://milotruck.github.io/blog/Foundry-Cheatsheet/
- Ethereum Docs: https://ethereum.org/en/developers/docs/
- Remix IDE (Web IDE): https://remix.ethereum.org/
- OpenZeppelin Contracts: https://github.com/OpenZeppelin/openzeppelin-contracts
- Etherscan (Explorer): https://etherscan.io/
- Licenses: https://opensource.org/licenses

──────────────────────────────────────────────

### 🔹 Other Learning Resources Links

──────────────────────────────────────────────
- Cyfrin Updraft: https://updraft.cyfrin.io/
- List of Web3 Education Resources By Alchemy: https://www.alchemy.com/dapps/best/web3-education-resources
- CryptoZombies (Gamified learning): https://cryptozombies.io/
- Solidity by Example: https://solidity-by-example.org/
- Smart Contract Best Practices: https://consensys.github.io/smart-contract-best-practices/

---

## 📜 License  

This repository is licensed under the **MIT License**.  

---

## 🌍 About GDG Algiers 

**GDG Algiers** is a community-driven initiative that empowers developers by offering hands-on workshops, learning resources, and collaborative opportunities in cutting-edge technologies.  

---
