import "product.dart";

class Electronics extends Product {
  String? brand;

  Electronics(int id, String name, double price, String brand)
    : super(id, name, price);

  @override
  String getInfo() {
    return "ID: $id\nTitle: $name\nAuthor: $brand\nPrice: \$$price";
  }
}
