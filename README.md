# ⭐ PSA Academy – Fitness & Training Management Platform (Flutter Web + Firebase)

PSA Academy is a complete fitness training management platform built with **Flutter Web** and powered by **Firebase**.  
It includes role-based access, training templates, player management, attendance tracking, coach data, payments, and more.

This project demonstrates a clean, scalable architecture with data, domain, and presentation layers — following modern Flutter development practices.

---

## 🚀 Features

### 🔐 **Role-Based Authentication**
- Firebase Authentication
- Auth wrapper with role-based routing (Admin, Coach, Player)

### 🧍‍♂️ **Player Management**
- View player information
- Player performance & training details
- Attach workouts to players

### 🧑‍🏫 **Coach Management**
- Coach profiles
- Coach-specific training templates

### 📝 **Training Template System**
- Create & manage training templates  
- Clone existing templates (trainingTemplatesClone.dart)
- Add exercises with sets, reps, duration

### ✔ Attendance Tracking
- Mark attendance
- Store logs in Firestore
- Export reports

### 💰 Payments & Expenses
- Track player payments
- Track academy expenses

### 🧾 Export & Reports
- Export **PDF reports** using `export_pdf.dart`

### 🔍 QR Code Features
- QR generator
- QR scanner
- Quick attendance / player lookup

### 🎨 Responsive UI
- Custom responsive container
- Works on all screen sizes (desktop & mobile web)

---

## 🧰 Tech Stack

### **Frontend**
- Flutter Web
- Provider (State Management)
- Responsive UI Architecture

### **Backend**
- Firebase Authentication  
- Cloud Firestore  
- Firebase Hosting  
- Firebase Storage (optional, depending on your usage)

### **Utilities**
- Shared Preferences
- PDF export
- QR Code scanning

---

## 🏗️ Project Architecture

This project follows a **clean, layered architecture**:


### **✔ Presentation Layer (pages, widgets)**
Responsible for:
- Screens
- UI widgets
- Local state (Provider)

### **✔ Controller**
Contains:
- Auth wrapper
- Role-based navigation logic

### **✔ Domain Layer**
Contains the **business logic**:
- Data sources
- Models
- Repositories (abstract)

### **✔ Data Layer**
Responsible for:
- Firebase calls
- Firestore queries
- Model serialization

### **✔ Core Layer**
Shared logic:
- Dependency Injection
- Failures & exceptions
- Constants
- Base usecases

---

<img width="436" height="883" alt="iPhone-14-Plus-psa-academy-65088 web app" src="https://github.com/user-attachments/assets/1d57aa4d-e0fe-4a9a-b69f-4546fb1f3e63" />
<img width="436" height="883" alt="iPhone-14-Plus-psa-academy-65088 web app (1)" src="https://github.com/user-attachments/assets/632941be-80d0-4138-b548-efa73b44478c" />
<img width="436" height="883" alt="iPhone-14-Plus-psa-academy-65088 web app (2)" src="https://github.com/user-attachments/assets/63563520-1915-4800-8b2d-0a74528981b1" />
<img width="436" height="883" alt="iPhone-14-Plus-psa-academy-65088 web app (3)" src="https://github.com/user-attachments/assets/1a8aa8ac-9a24-473a-b117-c9b905feab8e" />
<img width="436" height="883" alt="iPhone-14-Plus-psa-academy-65088 web app (4)" src="https://github.com/user-attachments/assets/743937f0-9ff8-4c79-a724-8a7f6caa9d66" />
<img width="436" height="883" alt="iPhone-14-Plus-psa-academy-65088 web app (5)" src="https://github.com/user-attachments/assets/c7121e10-449a-48fc-a9f4-354cfae7ffcf" />
<img width="436" height="883" alt="iPhone-14-Plus-psa-academy-65088 web app (6)" src="https://github.com/user-attachments/assets/879af397-2337-47b0-845e-e5af8df1d8d8" />
<img width="436" height="883" alt="iPhone-14-Plus-psa-academy-65088 web app (7)" src="https://github.com/user-attachments/assets/dfadd964-ee41-4631-88be-6ba3830171c4" />
<img width="436" height="883" alt="iPhone-14-Plus-psa-academy-65088 web app (8)" src="https://github.com/user-attachments/assets/fc270c3f-63e3-44d2-9a16-d17d5c569419" />
<img width="436" height="883" alt="iPhone-14-Plus-psa-academy-65088 web app (9)" src="https://github.com/user-attachments/assets/99014000-217e-42c2-ad3a-8b4b37d0ecc4" />
<img width="436" height="883" alt="iPhone-14-Plus-psa-academy-65088 web app (10)" src="https://github.com/user-attachments/assets/c8c07aad-1615-4de0-bc8c-1a220b8f13e9" />
<img width="436" height="883" alt="iPhone-14-Plus-psa-academy-65088 web app (11)" src="https://github.com/user-attachments/assets/2650c221-dc49-4823-9a71-0231c4b7fa3a" />

## 📁 Folder Structure

```md
psa-academy/
│
├── config/
│   ├── routes/
│   └── theme/
│
├── controller/
│   └── auth_wrapper.dart
│
├── core/
│   ├── constants/
│   ├── di/
│   ├── errors/
│   └── usecases/
│
├── domain/
│   ├── datasources/
│   ├── models/
│   └── repositories/
│
├── data/
│   ├── datasources/ (Firebase implementations)
│   ├── models/
│   └── repositories/
│
├── pages/
│   ├── home_screen.dart
│   ├── coach_details.dart
│   ├── login_screen.dart
│   ├── player_details.dart
│   ├── signup_screen.dart
│   ├── splash_screen.dart
│   ├── trainingTemplates.dart
│   └── trainingTemplatesClone.dart
│
├── widgets/
│   ├── common/
│   ├── addExercisePage.dart
│   ├── constrained_button.dart
│   ├── error_popup.dart
│   ├── qr_popup.dart
│   ├── qr_scanner.dart
│   ├── report_listBuilder.dart
│   └── responsive_container.dart
│
├── services/
│   ├── firebase/
│   └── provider/
│
├── utils/
│   ├── constants.dart
│   ├── export_pdf.dart
│   └── shared_preferences_helper.dart
│
├── assets/
│   ├── images/
│   └── screenshots/
│
├── main.dart
└── README.md
