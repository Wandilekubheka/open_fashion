import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE7EAEF),
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
        ),
        title: const Text(
          'Open Fashion',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildTrending(),
            //  footer
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [Row(children: [
                    ],
                  )],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTrending() {
    return AspectRatio(
      aspectRatio: 0.7,
      child: Image.asset('lib/assets/images/Banner.png', fit: BoxFit.fill),
    );
  }
}
