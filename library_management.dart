import 'dart:io';
import 'dart:math';
class Book{
int? _bookId;
String? _title;
String? _author;
int? _year;
// parametarized constructor
Book(this._bookId , this._title , this._author , this._year);
// setter function to update
set bookId(int bookId) => this._bookId = bookId;
set title(String title) => this._title = title;
set author(String author) => this._author = author;
set year(int y) {
    if (y < 0) { // handle if user enters negative number
      throw ArgumentError('Year cannot be negative');
    }
    _year = y;
  }
// getter function to access
int get bookId => this._bookId!;
String get title => this._title!;
String get author => this._author!;
int get year => this._year!;
// display function prints details of book
void display(){
  print("Book id : $_bookId");
  print("Title : $_title");
  print("Author : $_author");
  print("Year of publication : $_year");
}

}

class Library{
  List <Book> books = []; // list of books and its datatype Book 
  void addBook(Book book){ // function adds new book
  books.add(book); 
  print("Book added already");
  }

  void removeBook(int bookId){ // function removes through book id
    Book? temp; // temporary variable stores book that want to remove
    for(Book book in books){ // for loop
      if(book.bookId == bookId){ // check if bookId that you entered is typical to bookId found
          temp = book; // if condition is correct it will be stored to temp
          break; // break if condition is correct
      }
    }
    if(temp != null){ // if temp has elements
      books.remove(temp); // remove temp that stores book
      print("Book already removed");
    }else{
      print("There are no books");
    }

  }

  void searchBook(String title){ // function searches book through title
    for(Book book in books){ // for loop
      if(book.title.toLowerCase().trim() == title.toLowerCase().trim()){ // check every book == book title
        print("Book is found");
        book.display(); // display book if found
        return;
      }      
    }
    print("Book is not found");       
  }
// function views all books
  void viewAllbooks(){
  if(books.isEmpty){ // check on finding books or not
    print("there are no books");
  }else{
    print("Books : ");
    for(Book book in books){ // for loop prints all books if exist
      book.display();
    }
  }

  }
}

void main() {
  Library library = Library(); // create object of Library class

  while (true) {
    print("\n=== Welcome to Library Management System ===");
    print("1) Add book");
    print("2) Remove book");
    print("3) Search book");
    print("4) View all books");
    print("5) Exit");
    print("Enter your choice:");

    int? choice = int.tryParse(stdin.readLineSync()!);

    if (choice == 1) {
      print("Enter details of the book to add:");
      stdout.write("Enter book id: ");
      int bookId = int.parse(stdin.readLineSync()!); // use int.parse because readLineSync is for string

      stdout.write("Enter title: ");
      String title = stdin.readLineSync()!;

      stdout.write("Enter the author: ");
      String author = stdin.readLineSync()!;  // use int.parse because readLineSync is for string

      stdout.write("Enter year: ");
      int year = int.parse(stdin.readLineSync()!); // use int.parse because readLineSync is for string
      while (year < 0) {
      print("Year cannot be negative please enter a valid year:");
      year = int.parse(stdin.readLineSync()!);
      }

      library.addBook(Book(bookId, title, author, year));

    } else if (choice == 2) {
      stdout.write("Enter book id to remove: ");
      int bookId = int.parse(stdin.readLineSync()!);
      library.removeBook(bookId);

    } else if (choice == 3) {
      stdout.write("Enter title to search: ");
      String title = stdin.readLineSync()!;
      library.searchBook(title);

    } else if (choice == 4) {
      library.viewAllbooks();

    } else if (choice == 5) {
      print("exit");
      break;

    } else {
      print("Enter a valid choice (1–5).");
    }
  }
}


