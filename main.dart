import "dart:io";
import "book.dart";
import "electronics.dart";
import "product.dart";
import "inventory-mg.dart";

void displayMenu() {
  print("Inventory Management Dashboard");
  print("");
  print("1. Add product");
  print("2. Display products");
  print("3. Update product");
  print("4. Delete product");
  print("Exit");
  print("");
  print('Choose an option (1-4): ');
}

void addProductOpt() {
  print("Add Products");
  print("");
  print("Select Product Category");
  print("1. Book");
  print("2. Electronics");

  InventoryManager manager = InventoryManager();

  String? choice = stdin.readLineSync();

  if (choice != "1" && choice != "2") {
    print("Invalid! enter valid input");
  }

  print("Enter product name: ");
  String? inputName = stdin.readLineSync();
  print("");
  if (inputName == null || inputName.isEmpty) {
    print("Please enter your products name!");
  }

  if (inputName is! String) {
    print("Invalid input type");
  }

  print("Enter price: ");
  String inputPrice = stdin.readLineSync()!;
  print("");
  if (inputPrice.isEmpty) {
    print("Price is required");

    double? price = double.tryParse(inputPrice);
    if (price is! double) {
      print("Invalid! price must be an integer or decimal");
    }
  }

  String name = inputName!;
  double price = double.tryParse(inputPrice)!;

  switch (choice) {
    case "1":
      print("Enter Author: ");
      String? inputAuthor = stdin.readLineSync();
      if (inputAuthor == null || inputAuthor.isEmpty) {
        print("Invalid input");
      }

      String author = inputAuthor!;

      Book book = Book(0, name, price, author);
      manager.addProduct(book);
      print("-" * 30);
      print("Book: ");
      print("");
      print(book.getInfo());
      break;
    case "2":
      print("Enter brand: ");
      String? inputBrand = stdin.readLineSync();
      if (inputBrand == null || inputBrand.isEmpty) {
        print("Invalid input");
      }

      String brand = inputBrand!;

      Electronics electronics = Electronics(0, name, price, brand);
      manager.addProduct(electronics);
      print("-" * 30);
      print("Electronics: ");
      print("");
      print(electronics.getInfo());
      break;
  }
  print("");
  print("Product added successfully");
  print("-" * 30);
}

void isSelected() {
  InventoryManager manager = InventoryManager();

  String? selected = stdin.readLineSync();
  if (selected == null || selected.isEmpty) {
    print("number is required");
  }

  if (selected == "1") {
    addProductOpt();
  } else if (selected == "2") {
    print("view products added.");
    manager.viewProduct();
  } else if (selected == "3") {
    manager.updateProduct();
  } else if (selected == "4") {
    manager.deleteProduct();
  } else {
    print("invalid input!");
  }
}

void main() {
  InventoryManager manager = InventoryManager();

  while (true) {
    displayMenu();
    isSelected();

    print("Type 'Enter' to continue");
    stdin.readLineSync();
  }
}
