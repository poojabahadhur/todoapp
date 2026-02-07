# 📝 To-Do App

A clean and intuitive To-Do List mobile application built using Flutter.
The app helps users efficiently manage daily tasks by allowing them to add, edit, delete, and complete tasks, with all data stored locally on the device.

This project demonstrates practical Flutter development skills, including local data persistence using Hive, clean UI design, reusable widgets, and date/time handling.

---

## 🚀 Features

- Add new tasks
- Edit existing tasks
- Delete tasks
- Mark tasks as completed
- Persist tasks locally using Hive
- Display task creation date and time
- Swipe actions for task management using flutter_slidable
- Clean and minimal Material UI
- Smooth and responsive user experience

---

## 🛠️ Tech Stack

- Framework: Flutter
- Language: Dart
- UI Design: Material UI
- Local Storage: Hive & Hive Flutter
- State Handling: Flutter widget state
- Date & Time Formatting: intl
- UI Interactions: flutter_slidable
- Platforms Tested:
  - Android (physical device)
  - Android & iOS virtual emulators

---

## 📂 Project Structure

lib/
 ├── main.dart                # Application entry point
 ├── data/
 │   └── database.dart        # Hive database logic
 ├── pages/
 │   └── home_page.dart       # Main home screen
 ├── util/
 │   ├── dialogbox.dart       # Add / Edit task dialog
 │   ├── mybuttons.dart       # Custom reusable buttons
 │   └── todo_tile.dart       # Individual task widget

---

## ⚙️ Getting Started

### Prerequisites
- Flutter SDK (>= 3.7.2)
- Android Studio or VS Code
- Emulator or physical device

### Steps

1. Clone the repository  
   git clone https://github.com/poojabahadhur/todoapp.git

2. Navigate to the project directory  
   cd todoapp

3. Install dependencies  
   flutter pub get

4. Generate Hive adapters  
   flutter pub run build_runner build

5. Run the application  
   flutter run

---

## 🎯 Learning Outcomes

- Implementing local data persistence using Hive
- Managing the complete task lifecycle (add, edit, delete, complete)
- Designing clean and reusable Flutter widgets
- Implementing swipe-based UI interactions
- Working with date and time using intl
- Structuring Flutter projects using best practices

---

## 🔮 Future Enhancements

- Task reminders and notifications
- Dark mode support
- Search and filter functionality
- Task categories or priorities
- Cloud backup and synchronization

---

## 👩‍💻 Author

Bahadhur Sri Pooja  
Flutter Developer

---

## 📄 License

This project is open-source and available for learning and educational purposes.

---

If you find this project useful, feel free to star the repository!
