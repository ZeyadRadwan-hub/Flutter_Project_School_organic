import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Provider/ShoppingCards_Provider.dart';
import 'CartPage.dart';

class Products extends StatelessWidget {
  Products({super.key});

  final List<IconData> productIcons = [
    Icons.watch, Icons.headphones, Icons.laptop, Icons.camera_alt,
    Icons.phone_android, Icons.tablet, Icons.tv, Icons.sports_esports,
  ];

  final List<String> productNames = [
    "Smart Watch", "Headphones", "Laptop", "Camera",
    "Smartphone", "Tablet", "Television", "Gaming Console",
  ];

  final List<double> productPrices = [
    1200, 750, 8500, 3200, 5000, 4200, 6000, 15000,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: GridView.builder(
                itemCount: productNames.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.95,
                ),
                itemBuilder: (context, index) {
                  return ProductCard(
                    icon: productIcons[index],
                    name: productNames[index],
                    price: productPrices[index],
                  );
                },
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CartPage()),
          );
        },
        child: Icon(Icons.shopping_cart, color: Colors.white),
      ),
    );
  }
}

class ProductCard extends StatefulWidget {
  final IconData icon;
  final String name;
  final double price;

  const ProductCard({
    super.key,
    required this.icon,
    required this.name,
    required this.price,
  });

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isAdded = false;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ShoppingcardsProvider>(context, listen: false);

    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(widget.icon, size: 45, color: Colors.teal),
            SizedBox(height: 8),
            Text(widget.name, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500), textAlign: TextAlign.center),
            SizedBox(height: 4),
            Text("\$${widget.price.toStringAsFixed(0)}", style: TextStyle(fontSize: 13, color: Colors.grey)),
            SizedBox(height: 8),
            GestureDetector(
              onTap: () {
                setState(() {
                  isAdded = !isAdded;
                });
                provider.addToCart(widget.name, widget.price, widget.icon);
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 250),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: isAdded ? Colors.green : Colors.teal,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  isAdded ? "Added" : "Add to Cart",
                  style: TextStyle(fontSize: 11, color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}