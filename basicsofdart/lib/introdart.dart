import 'dart:io';

void main() {
  String productName = "T Shirt";
  print(productName);

  double productPrice = 99.9;
  int productQuantity = 18;
  double totalPrice = productPrice * productQuantity;
  print("Order total is $totalPrice");

  if (totalPrice > 500) {
    double discountAmount = (totalPrice / 100) * 15;
    totalPrice -= discountAmount;
  }

  print("Discounted total is $totalPrice");
  stdout.write("Enter your Age: ");
  //var age = int.parse(stdin.readLineSync());
}
