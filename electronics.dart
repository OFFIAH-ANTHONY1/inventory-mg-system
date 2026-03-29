import "product.dart";
import "main.dart";

class Electronics extends Product {
  String? brand;

  Electronics(int id, String name, double price, this.brand)
    : super(id, name, price);

  @override
  String getInfo() {
    return "ID: $id\n"
        "Name: $name\n"
        "Price: \$$price\n"
        "Brand: $brand\n";
  }
}
