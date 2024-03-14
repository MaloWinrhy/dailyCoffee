import 'package:daily_coffee/src/main_page/data/coffee_data.dart';
import 'package:flutter/material.dart';

class CoffeeSelector extends StatefulWidget {
  @override
  _CoffeeSelectorState createState() => _CoffeeSelectorState();
}

class _CoffeeSelectorState extends State<CoffeeSelector> {
  String selectedCategory = 'Cappuccino';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 45,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: coffeeTypes.length,
            itemBuilder: (context, index) {
              bool isSelected = coffeeTypes[index] == selectedCategory;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedCategory = coffeeTypes[index];
                  });
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  padding: EdgeInsets.only(right: 20, left: 20, top: 10),
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    color: isSelected ? Color(0xFFC67C4E) : Colors.transparent,
                    borderRadius: BorderRadius.circular(15),
                    border: isSelected
                        ? Border.all(color: Color(0xFFC67C4E), width: 2)
                        : null,
                  ),
                  child: Text(
                    coffeeTypes[index],
                    style: TextStyle(
                      color: isSelected
                          ? const Color.fromARGB(255, 254, 255, 255)
                          : Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        Expanded(
          flex: 3,
          child: AnimatedSwitcher(
            duration: Duration(milliseconds: 300), // Durée de l'animation
            child: GridView.count(
              key: ValueKey<String>(
                  selectedCategory), // Clé unique pour chaque catégorie
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.08),
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 0.55,
              children: getCoffeeItems(selectedCategory),
            ),
          ),
        ),
      ],
    );
  }
}

final List<String> coffeeTypes = [
  'Cappuccino',
  'Macchiato',
  'Espresso',
  'Latte',
  'Mocha'
];

List<Widget> getCoffeeItems(selectedCategory) {
  List<CoffeeItem> items = [];
  switch (selectedCategory) {
    case 'Cappuccino':
      items = cappuccinoItems;
      break;
    case 'Macchiato':
      items = macchiatoItems;
      break;
  }

  return items
      .map((coffeeItem) => Container(
            margin: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 130,
                  width: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: AssetImage(coffeeItem.imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Text(coffeeItem.name,
                    style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 4),
                Text(coffeeItem.description,
                    style: TextStyle(color: Color(0xFF9B9B9B))),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('€ ${coffeeItem.price.toStringAsFixed(2)}',
                        style: TextStyle(
                            color: Color(0xFF2F4B4E),
                            fontWeight: FontWeight.bold,
                            fontSize: 18)),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Color(0xFFC67C4E),
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Icon(Icons.add, size: 20, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ))
      .toList();
}
