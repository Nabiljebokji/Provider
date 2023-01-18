// ignore_for_file: prefer_const_constructors, camel_case_types, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1/provider/cart.dart';
import 'package:provider1/model/item.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List<Item> items = [
    Item(name: "Nabil Jebokji", price: 21.2),
    Item(name: "sara Jebokji", price: 92.2),
    Item(name: "khaled Jebokji", price: 83.2),
    Item(name: "ahmad Jebokji", price: 74.2),
    Item(name: "saad Jebokji", price: 6.52),
    Item(name: "munir Jebokji", price: 55.2),
    Item(name: "diam Jebokji", price: 46.2),
    Item(name: "dania Jebokji", price: 37.2),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("checkOutCart");
                },
                icon: Icon(Icons.add_shopping_cart),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: Consumer<cart>(
                  builder: (context, cart, child) {
                    return Text("${cart.count}");
                  },
                ),
              ),
            ],
          ),
        ],
      ),
      body: Consumer<cart>(
        builder: (context, cart, child) {
          return ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text("${items[index].name}"),
                  trailing: IconButton(
                    onPressed: () {
                      cart.add(items[index]);
                    },
                    icon: Icon(Icons.add),
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
