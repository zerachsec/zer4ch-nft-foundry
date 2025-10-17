# 🧱 Zerach NFT (Foundry)

An ERC-721 NFT project built and tested with **Foundry**, inspired by lessons from **Cyfrin Updraft**.  
This project focuses on mastering **NFT smart contract development**, **testing best practices**, and **security-conscious design**.

---

## 🚀 Overview

**Zerach NFT** is a simple yet powerful implementation of an ERC-721 Non-Fungible Token (NFT) using **Foundry** as the development and testing framework.  
This project was built as part of my **Cyfrin Updraft learning journey**, emphasizing:
- Writing clean and modular Solidity contracts 🧠  
- Implementing Foundry tests 🧪  
- Understanding NFT minting logic and gas optimization ⚡  
- Applying security-first design principles 🔐  

---

## 🧩 Tech Stack

| Tool | Description |
|------|--------------|
| **Solidity** | Smart contract language |
| **Foundry** | Fast, modular, and modern Ethereum development toolkit |
| **OpenZeppelin** | Standard library for secure smart contracts |
| **Anvil** | Local Ethereum node for testing |
| **Forge** | Foundry’s build, test, and deployment tool |
| **Cast** | CLI for interacting with contracts |

---

## 📁 Project Structure

```
Zerach-NFT-Foundry/
│
├── src/
│   └── ZerachNFT.sol         # Core ERC-721 contract
│
├── test/
│   └── ZerachNFT.t.sol       # Foundry test suite
│
├── script/
│   ├── DeployZerachNFT.s.sol # Deployment script
│   └── MintZerachNFT.s.sol   # Example minting script
│
├── foundry.toml              # Foundry config
└── README.md                 # Project documentation
```

---

## ⚙️ Installation & Setup

### 1️⃣ Clone the Repository
```bash
git clone https://github.com/zerachsec/Zerach-NFT-Foundry.git
cd Zerach-NFT-Foundry
```

### 2️⃣ Install Foundry
If you don’t have Foundry yet:
```bash
curl -L https://foundry.paradigm.xyz | bash
foundryup
```

### 3️⃣ Build Contracts
```bash
forge build
```

### 4️⃣ Run Tests
```bash
forge test -vvv
```

### 5️⃣ Run Local Node (optional)
```bash
anvil
```

### 6️⃣ Deploy Script
```bash
forge script script/DeployZerachNFT.s.sol --rpc-url <RPC_URL> --private-key <PRIVATE_KEY> --broadcast
```

---

## 🧠 What I Learned from Cyfrin Updraft

- How to **structure** NFT smart contract projects with Foundry  
- Importance of **unit testing and fuzzing**  
- Using **deployment scripts** effectively  
- **Security practices** while minting and storing metadata  
- Writing **gas-efficient code** using Foundry insights  

---

## 🔒 Security Considerations

Following **Secure Smart Contract Design** principles:
- Avoided reentrancy by not relying on external calls during minting  
- Validated user inputs and ownership  
- Used OpenZeppelin’s audited ERC-721 base  
- Added checks for metadata and supply limits  

---

## 🧪 Example Test (Foundry)

```solidity
function testMintIncrementsSupply() public {
    uint256 initialSupply = nft.totalSupply();
    nft.mint(address(this));
    assertEq(nft.totalSupply(), initialSupply + 1);
}
```

---

## 🧰 Commands Quick Reference

| Command | Description |
|----------|-------------|
| `forge build` | Compile smart contracts |
| `forge test` | Run all tests |
| `anvil` | Start local Ethereum node |
| `forge script` | Run deploy/mint scripts |
| `cast call` | Interact with deployed contract |

---

## 🌟 Acknowledgements

- [**Cyfrin Updraft**](https://updraft.cyfrin.io) — for excellent Web3 Security & Solidity education  
- [**Owen Thurm**](https://twitter.com/OwenThurm) — for insightful NFT & Foundry tutorials  
- [**OpenZeppelin**](https://docs.openzeppelin.com/contracts) — for secure contract templates  

---

## 🧑‍💻 Author

**Zerach**  
Smart Contract Security Engineer | Web3 Builder  
Learning in Public with **Cyfrin Updraft** 🧠  
Follow my journey → [X (Twitter)](https://x.com/zer4chsec)

---

## 📜 License

This project is licensed under the [MIT License](LICENSE).
