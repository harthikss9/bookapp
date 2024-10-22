// bloc/book_bloc.dart
import 'package:bloc/bloc.dart';
import '../models/book.dart';

abstract class BookEvent {}

class LoadBooks extends BookEvent {}

class SortBooksByAuthor extends BookEvent {}

class SortBooksByTitle extends BookEvent {}

class BookState {
  final List<Book> books;
  final bool sortedByTitle;

  BookState({
    this.books = const [],
    this.sortedByTitle = false,
  });
}

class BookBloc extends Bloc<BookEvent, BookState> {
  BookBloc() : super(BookState()) {
    on<LoadBooks>(_onLoadBooks);
    on<SortBooksByAuthor>(_onSortBooksByAuthor);
    on<SortBooksByTitle>(_onSortBooksByTitle);
  }

void _onLoadBooks(LoadBooks event, Emitter<BookState> emit) {
  final books = [
    Book(
      title: "The Great Gatsby",
      author: "F. Scott Fitzgerald",
      description: "A classic novel set in the Roaring Twenties.",
      imageUrl: "assets/images/great_gatsby.png", // Update with the correct path
    ),
    Book(
      title: "1984",
      author: "George Orwell",
      description: "A dystopian novel about totalitarianism.",
      imageUrl: "assets/images/1984.png",
    ),
    Book(
      title: "To Kill a Mockingbird",
      author: "Harper Lee",
      description: "A novel about the serious issues of race and rape.",
      imageUrl: "assets/images/to_kill_a_mockingbird.png",
    ),
    Book(
      title: "The Catcher in the Rye",
      author: "J.D. Salinger",
      description: "A story about teenage angst and alienation.",
      imageUrl: "assets/images/catcher_in_the_rye.png",
    ),
    Book(
      title: "Pride and Prejudice",
      author: "Jane Austen",
      description: "A classic romantic novel.",
      imageUrl: "assets/images/pride_and_prejudice.png",
    ),
    
  ];
  emit(BookState(books: books));
}




  void _onSortBooksByAuthor(SortBooksByAuthor event, Emitter<BookState> emit) {
    final sortedBooks = List<Book>.from(state.books)
      ..sort((a, b) => a.author.compareTo(b.author));
    emit(BookState(books: sortedBooks));
  }

  void _onSortBooksByTitle(SortBooksByTitle event, Emitter<BookState> emit) {
    final sortedBooks = List<Book>.from(state.books)
      ..sort((a, b) => a.title.compareTo(b.title));
    emit(BookState(books: sortedBooks, sortedByTitle: true));
  }
}
