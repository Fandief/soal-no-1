import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int cartItems = 0;

  void addToCart() {
    setState(() {
      cartItems++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CARTRIDGE KINGS"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: [
          // Header Section
          Container(
            padding: const EdgeInsets.all(16.0),
            color: Colors.grey[200],
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildHeaderButton("Franchise Opportunities"),
                    _buildHeaderButton("Help"),
                    _buildHeaderButton("Feedback"),
                  ],
                ),
                const SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("hello@email.com",
                        style: TextStyle(fontSize: 14, color: Colors.black54)),
                    const Text("0800 022 2 022",
                        style: TextStyle(fontSize: 14, color: Colors.black54)),
                    ElevatedButton(
                      onPressed: addToCart,
                      child: Text("CART ($cartItems)"),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Navigation Section
          Container(
            color: Colors.grey[300],
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildNavButton("HOME"),
                _buildNavButton("INK CARTRIDGES"),
                _buildNavButton("TONER CARTRIDGES"),
                _buildNavButton("CONTACT US"),
                _buildNavButton("LOGIN / REGISTER"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeaderButton(String text) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        backgroundColor: Colors.blueGrey[100],
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      ),
      child: Text(
        text,
        style: const TextStyle(color: Colors.black),
      ),
    );
  }

  Widget _buildNavButton(String text) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        backgroundColor: Colors.blueGrey,
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 12, color: Colors.white),
      ),
    );
  }
}
