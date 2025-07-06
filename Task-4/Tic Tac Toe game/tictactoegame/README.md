# Tic Tac Toe Game

A modern implementation of the classic Tic Tac Toe game built with Flutter. This game features a clean Material Design 3 interface and provides an engaging two-player experience.

## Features

- 🎮 Classic 3x3 grid gameplay
- 👥 Two-player turn-based gameplay
- 🎯 Automatic win detection
- 🤝 Draw detection
- 🔄 Game reset functionality
- 🎨 Modern Material Design 3 UI
- 🎯 Visual feedback for player moves
- 📱 Responsive design that works on all screen sizes

## Game Rules

1. The game is played on a 3x3 grid
2. Players take turns placing their marks (X or O) in empty squares
3. The first player to get 3 of their marks in a row (horizontally, vertically, or diagonally) wins
4. If all squares are filled and no player has won, the game is a draw

## Getting Started

### Prerequisites

- Flutter SDK (latest version recommended)
- Dart SDK
- An IDE (VS Code, Android Studio, or IntelliJ IDEA)
- A device or emulator to run the app

### Installation

1. Clone this repository:
```bash
git clone <repository-url>
```

2. Navigate to the project directory:
```bash
cd tictactoegame
```

3. Install dependencies:
```bash
flutter pub get
```

4. Run the app:
```bash
flutter run
```

## How to Play

1. Launch the app
2. The game starts with Player X's turn
3. Tap any empty square to place your mark
4. Players alternate turns until someone wins or the game ends in a draw
5. Use the "Reset Game" button to start a new game at any time

## Game States

- **In Progress**: Shows current player's turn (X or O)
- **Winner**: Displays the winning player (X or O)
- **Draw**: Shows "Game Draw!" when no player wins

## Technical Details

- Built with Flutter and Dart
- Uses Material Design 3 for modern UI components
- Implements state management using Flutter's setState
- Responsive layout that adapts to different screen sizes

## Contributing

Feel free to submit issues and enhancement requests!

## License

This project is open source and available under the MIT License.
