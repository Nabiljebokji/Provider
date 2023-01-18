import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1/provider/cart.dart';

class checkOutCart extends StatefulWidget {
  const checkOutCart({super.key});

  @override
  State<checkOutCart> createState() => _checkOutCartState();
}

class _checkOutCartState extends State<checkOutCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Cart'),
      ),
      body: Consumer<cart>(
        builder: (context, cart, child) {
          return ListView.builder(
            itemCount: cart.items.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text("${cart.CheckOutCartList[index].name}"),
                  trailing: IconButton(
                    onPressed: () {
                      cart.Delete(cart.CheckOutCartList[index]);
                    },
                    icon: Icon(Icons.delete),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
