class CoffeeItem {
  final String name;
  final String description;
  final double price;
  final String imagePath;

  CoffeeItem({
    required this.name,
    required this.description,
    required this.price,
    required this.imagePath,
  });
}

final List<CoffeeItem> cappuccinoItems = [
  CoffeeItem(
      name: "Classic Cappuccino",
      description: "With whole milk",
      price: 3.50,
      imagePath: "assets/coffee.png"),
  CoffeeItem(
      name: "Vanilla Cappuccino",
      description: "Infused with vanilla",
      price: 4.00,
      imagePath: "assets/coffee2.png"),
  CoffeeItem(
      name: "Caramel Cappuccino",
      description: "Drizzled with caramel",
      price: 4.50,
      imagePath: "assets/coffee3.png"),
  CoffeeItem(
      name: "Almond Milk Cappuccino",
      description: "Made with almond milk",
      price: 4.20,
      imagePath: "assets/coffee4.png"),
  CoffeeItem(
      name: "Hazelnut Cappuccino",
      description: "With hazelnut flavor",
      price: 4.75,
      imagePath: "assets/coffee.png"),
  CoffeeItem(
      name: "Sugar-Free Cappuccino",
      description: "No added sugar",
      price: 3.80,
      imagePath: "assets/coffee2.png"),
  CoffeeItem(
      name: "Iced Cappuccino",
      description: "Served cold with ice",
      price: 4.00,
      imagePath: "assets/coffee3.png"),
  CoffeeItem(
      name: "Spicy Cappuccino",
      description: "With a hint of spice",
      price: 4.30,
      imagePath: "assets/coffee4.png"),
  CoffeeItem(
      name: "Mocha Cappuccino",
      description: "Mixed with chocolate",
      price: 4.50,
      imagePath: "assets/coffee.png"),
  CoffeeItem(
      name: "Decaf Cappuccino",
      description: "Without caffeine",
      price: 3.50,
      imagePath: "assets/coffee2.png"),
];

final List<CoffeeItem> macchiatoItems = [
  CoffeeItem(
      name: "Classic Macchiato",
      description: "Rich and bold",
      price: 3.75,
      imagePath: "assets/macchiato.png"),
];
