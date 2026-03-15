import 'product.dart';

class Book extends Product {
  String? author;

  Book(int id, String name, double price, String author)
    : super(id, name, price);

  @override
  String getInfo() {
    return "Electronics\n"
        "ID: $id\n"
        "Title: $name\n"
        "Author: $author\n"
        "Price: \$$price";
  }
}
