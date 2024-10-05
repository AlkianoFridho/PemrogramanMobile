import 'package:flutter/material.dart';
import 'package:coba/pages/order_page.dart';

class MenuPage extends StatelessWidget {
  final Function(Map<String, dynamic>) onAddToCart;

  MenuPage({super.key, required this.onAddToCart});

  final List<String> coffeeTypes = [
    'Ekspreso',
    'Capucino',
    'Mocachino',
    'Latte',
    'Mocha'
  ];

  final List<String> ImageUrls = [
    'https://e7.pngegg.com/pngimages/791/805/png-clipart-coffee-cup-tea-cafe-thick-coffee-food-photography-thumbnail.png.png',
    'https://e7.pngegg.com/pngimages/791/805/png-clipart-coffee-cup-tea-cafe-thick-coffee-food-photography-thumbnail.png.png',
    'https://e7.pngegg.com/pngimages/791/805/png-clipart-coffee-cup-tea-cafe-thick-coffee-food-photography-thumbnail.png.png',
    'https://e7.pngegg.com/pngimages/791/805/png-clipart-coffee-cup-tea-cafe-thick-coffee-food-photography-thumbnail.png.png',
    'https://e7.pngegg.com/pngimages/791/805/png-clipart-coffee-cup-tea-cafe-thick-coffee-food-photography-thumbnail.png.png',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: coffeeTypes.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(coffeeTypes[index]),
          leading: Image.network(ImageUrls[index]),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => OrderPage(
                  coffeeName: coffeeTypes[index],
                  onAddToCart: onAddToCart,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
