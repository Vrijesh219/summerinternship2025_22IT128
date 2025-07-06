# QR Code Scanner App

A Flutter application that allows users to scan QR codes using their device's camera. The app extracts information from QR codes and provides options to interact with the scanned content, such as opening URLs.

## Features

- Real-time QR code scanning using the device camera
- Display of scanned QR code content
- Automatic URL detection and opening capability
- Camera permission handling
- User-friendly interface with camera controls (flash, flip camera)
- Toast notifications for user feedback

## Prerequisites

- Flutter SDK (version 3.7.2 or higher)
- Dart SDK (version 3.0.0 or higher)
- Android Studio / VS Code with Flutter extensions
- A physical device or emulator with camera support

## Getting Started

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd scannerapp
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

## Dependencies

- `qr_code_scanner: ^1.0.1` - For QR code scanning functionality
- `url_launcher: ^6.2.4` - For handling URL opening
- `permission_handler: ^11.3.0` - For managing camera permissions
- `fluttertoast: ^8.2.4` - For displaying toast messages

## Usage

1. Launch the app
2. Grant camera permission when prompted
3. Point your camera at a QR code
4. The app will automatically scan and display the content
5. If the content is a URL, you can tap "Open URL" to visit the website
6. Use "Scan Again" to continue scanning

## Camera Controls

- **Flip Camera**: Tap the camera flip icon to switch between front and back cameras
- **Flash**: Tap the flash icon to toggle the camera flash

## Permissions

The app requires the following permissions:
- Camera access (for scanning QR codes)


