# Modern To-Do List App

A beautiful and modern To-Do List application built with Flutter. This app features a sleek UI with smooth animations and intuitive task management capabilities.

![To-Do List App](https://i.imgur.com/placeholder.png) <!-- You can add a screenshot of your app here -->

## Features

- ✨ Modern and clean UI with gradient design
- ✅ Add, edit, and delete tasks
- 🎯 Mark tasks as complete/incomplete
- 📱 Responsive design
- 💫 Smooth animations and transitions
- 🔄 Swipe to delete tasks
- 📊 Task completion counter
- 🎨 Beautiful color scheme
- 📝 Intuitive task editing

## Getting Started

### Prerequisites

- Flutter SDK (2.0.0 or higher)
- Dart SDK (2.12.0 or higher)
- Android Studio / VS Code with Flutter extensions
- Android Emulator or iOS Simulator (for testing)

### Installation

1. Clone the repository:
```bash
git clone https://github.com/yourusername/todo-list-app.git
```

2. Navigate to the project directory:
```bash
cd todo-list-app
```

3. Install dependencies:
```bash
flutter pub get
```

4. Run the app:
```bash
flutter run
```

## Usage

### Adding a Task
- Tap the floating action button (+) at the bottom right
- Enter your task in the dialog
- Tap "Add Task" to save

### Managing Tasks
- **Complete a task**: Tap the checkbox on the left of the task
- **Edit a task**: Tap the edit icon on the right of the task
- **Delete a task**: Swipe the task from right to left

### Task Counter
- The counter at the top shows your progress (completed/total tasks)
- Updates automatically as you complete tasks

## Project Structure

```
lib/
├── main.dart          # Main application file
└── ...
```

## Dependencies

The app uses only Flutter's built-in packages:
- `flutter/material.dart` - For UI components
- No external dependencies required

## Customization

### Colors
The app uses a beautiful purple gradient theme. You can customize the colors by modifying:
- Primary gradient: `Color(0xFF6C5CE7)` to `Color(0xFFA8A4FF)`
- Background color: `Color(0xFFF5F6FA)`
- Text colors: `Color(0xFF2D3436)`

### Font
The app uses the Poppins font family. You can change it in the `ThemeData` in `main.dart`.

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## Future Enhancements

- [ ] Add task categories
- [ ] Implement task priority levels
- [ ] Add due dates for tasks
- [ ] Include task search functionality
- [ ] Add data persistence
- [ ] Implement dark mode
- [ ] Add task sharing capability

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Flutter team for the amazing framework
- Material Design for the design inspiration
- The open-source community for various resources and inspiration

## Contact

Your Name - [@yourtwitter](https://twitter.com/yourtwitter) - email@example.com

Project Link: [https://github.com/yourusername/todo-list-app](https://github.com/yourusername/todo-list-app)
