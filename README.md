📘 TaskFlow – To-Do List & Productivity App

TaskFlow is a Flutter-based mobile application designed to help users efficiently manage their daily tasks and stay organized.
The app provides a clean and intuitive interface for creating, editing, completing, and deleting tasks, with fully offline local data storage.

It focuses on simplicity, performance, and smooth user interaction while demonstrating practical Flutter development concepts.

✨ Features

Create new tasks

Edit existing tasks

Delete tasks

Mark tasks as completed

Swipe actions for task management using flutter_slidable

Display task creation date and time

Clean and minimal Material UI

Smooth and responsive user experience

Fully offline local data persistence using Hive

🛠 Tech Stack

Framework: Flutter

Language: Dart

Local Storage: Hive & Hive Flutter

State Management: Flutter Widget State

Date & Time Formatting: intl

UI Interactions: flutter_slidable

💻 Development Environment

IDE: Visual Studio Code

Platform Tested:

Android (Physical Device)

Android Emulator

iOS Emulator

📂 Project Structure
lib/
├── main.dart                 # Application entry point
├── data/
│   └── database.dart         # Hive database logic
├── pages/
│   └── home_page.dart        # Main home screen
├── util/
│   ├── dialogbox.dart        # Add / Edit task dialog
│   ├── mybuttons.dart        # Custom reusable buttons
│   └── todo_tile.dart        # Individual task widget
▶️ How to Run the Project
Prerequisites

Flutter SDK (>= 3.7.2)

Android Studio or VS Code

Emulator or Physical Device

Steps

Clone the repository

git clone https://github.com/poojabahadhur/todoapp.git

Navigate to the project directory

cd todoapp

Install dependencies

flutter pub get

Generate Hive adapters

flutter pub run build_runner build

Run the application

flutter run
🏗 Architecture Overview

The application follows a simple layered structure:

UI Layer – Pages and reusable widgets

State Layer – Local widget state management

Data Layer – Hive database for persistent storage

This structure ensures separation of concerns and maintainable code.

📌 Project Information

Project Type: Independent Flutter Project

Focus: Task management and productivity

Data Storage: Fully offline using Hive local database

🎯 Learning Outcomes

Implementing local data persistence using Hive

Managing the complete task lifecycle (Add, Edit, Delete, Complete)

Designing reusable Flutter widgets

Implementing swipe-based UI interactions

Handling date and time formatting using intl

Structuring Flutter projects using best practices

🔮 Future Enhancements

Task reminders and notifications

Dark mode support

Search and filter functionality

Task categories or priority levels

Cloud backup and synchronization

👩‍💻 Author

Bahadhur Sri Pooja
B.Tech CSE (AI & ML) | Flutter Developer | Passionate about building productivity tools

📄 License

This project is open-source and available for learning and educational purposes.

If you find this project useful, feel free to ⭐ star the repository.
