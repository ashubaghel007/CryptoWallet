# 💰 Crypto Wallet iOS App

A modern **Crypto Wallet iOS application** built using **SwiftUI**, demonstrating scalable architecture, clean UI, and efficient state management using the latest Swift features.

---

## 🚀 Overview

This project showcases a fintech-style mobile application where users can:

* View their crypto portfolio
* Track market trends
* Explore coin details with charts
* Perform quick wallet actions

The app is designed with **production-level architecture principles** and focuses on **performance, modularity, and clean code**.

---

## ✨ Features

### 📱 Home Screen

* Portfolio balance overview
* Quick actions (Buy, Send, Receive, Swap)
* Crypto list with dynamic navigation

### 📊 Detail Screen

* Price trend visualization using **Swift Charts**
* Coin-specific insights
* Structured information display

### ⚡ Navigation

* Built using `NavigationStack`
* Type-safe routing using models

---

## 🧠 Architecture

* **MVVM (Model-View-ViewModel)**
* Clean separation of concerns:

  * Views (UI Layer)
  * ViewModels (State + Logic)
  * Models (Data Layer)

### State Management

* Uses **@Observable** and **@Bindable** (modern Swift Observation framework)

---

## 🛠 Tech Stack

* **Language:** Swift
* **UI Framework:** SwiftUI
* **State Management:** Observation (`@Observable`)
* **Concurrency:** Async/Await
* **Charts:** Swift Charts
* **Image Loading:** SDWebImageSwiftUI
* **Architecture:** MVVM

---

## 🔄 Data Handling

* Uses local JSON (`getCryptoList.json`) for mock data
* Generic JSON decoding via:

```swift
CryptoWalletHelper.loadJSON()
```

* Easily extendable to real APIs

---

## 🔐 Engineering Highlights

* Modern SwiftUI architecture
* Efficient rendering with `LazyVStack`
* Type-safe navigation
* Reusable UI components
* Clean and maintainable codebase

---

## ⚙️ Setup

1. Clone the repository

```
git clone <your-repo-url>
```

2. Open in Xcode

3. Run on Simulator / Device

> No API setup required (mock data included)

---

## 🚧 Future Enhancements

* 🌐 Live API integration (CoinGecko)
* 💸 Transaction support
* 📊 Portfolio analytics
* 🔔 Notifications & alerts



Screenshots:- 



https://github.com/user-attachments/assets/d47c99d5-a1b1-4805-890c-a4a8e5728ca3

https://github.com/user-attachments/assets/b0c75f0f-2099-41f8-a33d-53bc4bb10a6a





<img width="350" height="1000" alt="Simulator Screenshot - iPhone 17 Pro - 2026-04-10 at 01 09 54" src="https://github.com/user-attachments/assets/39f44624-dce0-4024-8759-59916c67e595" />
<img width="350" height="1000" alt="Simulator Screenshot - iPhone 17 Pro - 2026-04-10 at 01 09 52" src="https://github.com/user-attachments/assets/586a5ae2-22b7-42e7-b38d-15f5b3a817fd" />
<img width="350" height="1000" alt="Simulator Screenshot - iPhone 17 Pro - 2026-04-10 at 01 09 41" src="https://github.com/user-attachments/assets/d8696805-5aa9-4191-939c-6c6923b32240" />




