# Complete WhatsApp Clone

A fully functional WhatsApp clone built with Flutter, supporting web, Android, and iOS platforms, and powered by Firebase for authentication, real-time database, and storage solutions.

## Features

- **Cross-Platform Support**: Experience a consistent user interface and performance across web browsers, Android devices, and iOS devices.
- **Real-Time Messaging**: Send and receive messages instantly with real-time synchronization across all user devices.
- **Media Sharing**: Share images, videos, and documents seamlessly within chats.
- **Authentication**: Secure user authentication using Firebase Authentication.
- **Push Notifications**: Stay updated with new messages and alerts through push notifications.
- **Group Chats**: Create and manage group conversations with multiple participants.
- **Profile Customization**: Users can set profile pictures, update statuses, and manage personal information.

## Getting Started

Follow these instructions to set up and run the project on your local machine.

### Prerequisites

- **Flutter SDK**: [Install Flutter](https://docs.flutter.dev/get-started/install)
- **Dart SDK**: Included with Flutter
- **Firebase Account**: [Create a Firebase project](https://console.firebase.google.com/)

### Installation

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/UsmanAsad87/Complete_Whatsapp.git
   cd Complete_Whatsapp
   ```

2. **Install Dependencies**:
   ```bash
   flutter pub get
   ```

3. **Configure Firebase**:
   - Go to the [Firebase Console](https://console.firebase.google.com/).
   - Create a new project.
   - Add Android, iOS, and Web apps to your Firebase project.
   - Download the `google-services.json` file for Android and place it in the `android/app` directory.
   - Download the `GoogleService-Info.plist` file for iOS and place it in the `ios/Runner` directory.
   - For Web, follow the Firebase setup instructions to initialize Firebase in your project.

4. **Run the Application**:
   - **Web**:
     ```bash
     flutter run -d chrome
     ```
   - **Android**:
     ```bash
     flutter run -d android
     ```
   - **iOS**:
     ```bash
     flutter run -d ios
     ```

   *Ensure that you have the necessary devices or emulators set up for each platform.*

## Usage

Once the application is running:

- **Sign Up/In**: Register a new account or log in with existing credentials.
- **Chat**: Start new conversations or continue existing ones.
- **Media Sharing**: Use the attachment options within chats to share media files.
- **Profile**: Access the profile section to update your information and settings.

## Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository.
2. Create a new branch: `git checkout -b feature-branch-name`
3. Make your changes.
4. Commit your changes: `git commit -m 'Add some feature'`
5. Push to the branch: `git push origin feature-branch-name`
6. Open a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Acknowledgements

- [Flutter](https://flutter.dev/)
- [Firebase](https://firebase.google.com/)
- [UsmanAsad87](https://github.com/UsmanAsad87) for developing this application.
