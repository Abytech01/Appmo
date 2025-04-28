import 'package:flutter/material.dart';
import 'package:myapp/cart_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('dashboard Screen')),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CartScreen(
                jumlahBarang: "100",
              ),
              ),
            );
            },
            child: Text('Checkout'),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Kembali'),
          ),
        ],
      ),
    );
  }
}
