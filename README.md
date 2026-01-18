# 🛒 Yas-Martix E-Commerce App

![Flutter](https://img.shields.io/badge/Flutter-3.x-blue)
![Dart](https://img.shields.io/badge/Dart-3.x-blue)
![Firebase](https://img.shields.io/badge/Firebase-Firestore-orange)
![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20iOS-green)
![Architecture](https://img.shields.io/badge/Architecture-Clean-success)
![Status](https://img.shields.io/badge/Status-In%20Progress-yellow)

A scalable **Flutter e-commerce application** built using **Clean Architecture** and a **feature-based folder structure**.  
Designed to simulate real-world shopping flows with maintainable, production-ready code.

---

## ✨ Features

- 🛍️ Product browsing & categories
- 🛒 Shopping cart with quantity control
- ❤️ Favorites (wishlist)
- 📍 Address management
- 💳 Payment method selection  
- ⚙️ Settings screen
- 🌐 Localization (multi-language ready)
- 🔐 Firebase Authentication
- ☁️ Firebase Firestore backend
- 🎨 Centralized theming & constants
- 🧱 Clean Architecture (feature-first)

---

## 🏗️ Architecture Overview

The project follows a **feature-based architecture** to ensure scalability, maintainability, and testability.

### Layers
- **Presentation** → Handles UI and user interactions  
- **Features** → Contains feature-specific logic and screens  
- **Domain** → Business logic and use cases  
- **Core** → Shared utilities, models, and helpers  
- **Firebase** → Handles remote data, authentication, and Firestore  

### Architecture Principles
- **Separation of concerns** – Each layer has a single responsibility  
- **Feature-based scalability** – Easy to add or remove features without affecting others  
- **Testable & maintainable code** – Layers are isolated for easier testing and updates  
- **No tight coupling between layers** – Changes in one layer don’t break others


## 📂 Project Structure

```text
lib/
│
├── app/                # App configuration & root widget
├── core/               # Shared logic
│   ├── common/
│   ├── constants/
│   ├── errors/
│   ├── helpers/
│   ├── navigation/
│   ├── network/
│   ├── services/
│   ├── theme/
│   └── utils/
│
├── features/           # Feature modules
│   ├── home/
│   ├── cart/
│   ├── favorites/
│   ├── checkout/
│   ├── profile/
│   └── settings/
│
├── localization/       # Localization files
├── app.dart
└── main.dart
```

## ⚙️ Installation

### Prerequisites
- Flutter SDK  
- Dart SDK  
- Android Studio or VS Code  
- Firebase project  

### Clone & Run Locally
```bash
# Clone the repository
git clone https://github.com/YOUR_USERNAME/YOUR_REPO.git

# Enter the project directory
cd yas-martix

# Install dependencies
flutter pub get

# Run the app
flutter run
```

## 🔥 Firebase Setup

1. **Create a Firebase project**  

2. **Enable services:**  
   - Authentication  
   - Firestore Database  

3. **Add platform configuration files:**  
   - `android/app/google-services.json`  
   - `ios/Runner/GoogleService-Info.plist`  

4. **Important:**  
   - Never commit secrets or config files containing sensitive data 🚫

---

## 🚀 Usage

- Launch the app
- Browse products
- Add items to cart
- Manage favorites
- Add address & payment method
- Checkout securely
- Customize settings

---

## 🔐 Security Notes

- No secrets committed
- Sensitive data masked
- Firebase rules enforced
- `.gitignore` excludes build & config files

---

## 🛣️ Roadmap

- 🔔 Push notifications
- 🧪 Unit & widget tests
- 🌙 Dark mode
- 📦 Order history
- 🧑‍💼 Admin dashboard

---

## 📜 License

This project is licensed under the **MIT License**.

---

## 👨‍💻 Author

**Yasen Abaker**  
Flutter Developer  

> _“Build it clean today so it scales tomorrow.”_


