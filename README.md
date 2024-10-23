# BookApp

BookApp is a Flutter-based mobile application designed for book lovers. It allows users to browse a collection of books, view detailed information about each book, and sort the list by author or title. The app is built using the Bloc architecture for state management and supports dynamic data loading.

## Features

- Display a list of books with titles, authors, descriptions, and cover images.
- Sort books by author or title.
- View detailed information about a selected book.
- Horizontally scroll through the list of books.
- Built with a clean architecture using Flutter Bloc for state management.



## Getting Started

Follow these instructions to set up and run the project on your local machine.

### Prerequisites

Ensure you have the following installed:
- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- [Git](https://git-scm.com/)
- An IDE such as [Visual Studio Code](https://code.visualstudio.com/) or [Android Studio](https://developer.android.com/studio)

### Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/harthikss9/bookapp.git
   cd bookapp
   ```

2. **Install the dependencies:**
   ```bash
   flutter pub get
   ```

3. **Run the app:**
   - For Android:
     ```bash
     flutter run
     ```
   - For iOS (make sure you have a Mac with Xcode installed):
     ```bash
     flutter run
     ```

### Configuration

1. **Ensure that the assets are correctly configured in `pubspec.yaml`:**
   ```yaml
   flutter:
     assets:
       - assets/images/
   ```

2. **Add more books:**
   - You can update the list of books in `_onLoadBooks` method inside `book_bloc.dart` to add more books or modify the existing ones.

## Project Structure

- **lib/bloc/**: Contains the Bloc implementation for managing the state.
- **lib/models/**: Data model for the book entity.
- **lib/screens/**: UI screens, including the home page and book detail page.
- **lib/widgets/**: Reusable widgets such as book image and sort buttons.
- **assets/**: Folder containing images used in the app.

## How to Add New Books

1. Place the book cover image inside the `assets/images/` folder.
2. Update the `_onLoadBooks` function in `book_bloc.dart` to add the new book details:
   ```dart
   Book(
     title: "New Book Title",
     author: "Author Name",
     description: "A brief description of the book...",
     imageUrl: "assets/images/new_book_image.png",
   );
   ```

## Built With

- [Flutter](https://flutter.dev/) - The framework used
- [Bloc](https://bloclibrary.dev/) - State management library

## Contributing

Contributions are welcome! Please follow these steps to contribute:

1. Fork the project.
2. Create a new branch (`git checkout -b feature-branch`).
3. Make your changes and commit (`git commit -m 'Add new feature'`).
4. Push to the branch (`git push origin feature-branch`).
5. Create a Pull Request.

## License

This project is licensed under the MIT License. See the `LICENSE` file for more details.

## Contact

If you have any questions or suggestions, feel free to reach out:
- **GitHub**: [@harthikss9](https://github.com/harthikss9)
- **Email**: harthiksonpole033@gmail.com
