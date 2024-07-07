class Book {
  String title;
  String author;
  int pages;

  Book(this.title,this.author,this.pages);

  void displayInfo() {
    print("Title of book is $title");
    print("This author of book is $author");
    print("Number of pages of this book is $pages");
    print("----------------------------");
  }
}


main() {
  Book book1 = Book("Database", "Adham", 198);
  Book book2 = Book("Flutter", "Amr", 230); 
  book1.displayInfo();
  book2.displayInfo();  
}




