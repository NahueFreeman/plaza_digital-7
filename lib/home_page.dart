import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher_string.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int colorVar = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Row(
              children: [
                Icon(Icons.local_pizza_rounded, color: Colors.amber),
                SizedBox(width: 20),
                Text(
                  "Mis Pizzas",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
            width: double.infinity,
            height: 50,
            color: Colors.black,
          ),
          Image.asset("/pizza-logo.png", scale: 1.5),
          Text(
            "Bienvenido",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          GestureDetector(
            onTap: () => launchUrlString("https://www.facebook.com/"),

            child: Container(
              height: 25,
              width: 180,
              decoration: BoxDecoration(
                color: colorVar == 1 ? Colors.black : Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Comprar",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  SizedBox(width: 10),
                  Icon(Icons.shopping_cart_outlined, color: Colors.white),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Image.asset("/ig-black-64px.png", scale: 1.0),
          SizedBox(height: 20),
          Image.asset("/face-black-64px.png", scale: 1.0),
          SizedBox(height: 20),
          Image.asset("/wsp-black-64px.png", scale: 1.0),
        ],
      ),
    );
  }
}
