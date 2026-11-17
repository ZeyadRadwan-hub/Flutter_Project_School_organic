import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Provider/ShoppingCards_Provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ShoppingcardsProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Your Cart", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.teal,
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: provider.cartItems.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              leading: Icon(provider.cartItems[index].icon, color: Colors.teal),
              title: Text(provider.cartItems[index].name),
              subtitle: Text("Price: \$${provider.cartItems[index].price}"),

              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.remove, color: Colors.red),
                    onPressed: () {
                      provider.decrement(index);
                    },
                  ),
                  Text(
                    "${provider.cartItems[index].quantity}",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    icon: Icon(Icons.add, color: Colors.teal),
                    onPressed: () {
                      provider.increment(index);
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: Container(
        color: Colors.teal,
        padding: EdgeInsets.all(15),
        child: Text(
          "Total: \$${provider.calculateTotal()}",
          style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}