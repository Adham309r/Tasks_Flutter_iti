class Book {
  String title;
  String author;
  int pages;

  Book(this.title,this.author,this.pages);

  void displayInfo() {
    print("Title of book is $title");
    print("This author of book is $author");
    print("Number of pages of this book is $pages");
  }
}

class Novel extends Book {
   String genre;
   Novel(super.title,super.author,super.pages,this.genre);
   @override
   void displayInfo() {
     super.displayInfo();
     print("Genre is $genre");
     print("----------------------");
   }
  }

main() {
  Novel novel1 = Novel("Database","Adham",198,"learning");  
  Novel novel2 = Novel("Flutter","Amr",230,"learning");
  novel1.displayInfo();
  novel2.displayInfo();
}