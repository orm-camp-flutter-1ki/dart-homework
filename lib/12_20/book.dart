class Book {
  int id;
  String title;
  String author;
  DateTime publicationDate;
  bool isAvailable;

  Book(this.id, this.title, this.author, this.publicationDate,
      {this.isAvailable = true});

  @override
  String toString() {
    return 'Book{id: $id, title: $title, author: $author, publicationDate: $publicationDate, isAvailable: $isAvailable}';
  }
}
