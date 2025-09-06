import 'package:flutter/material.dart';
import 'package:open_fashion/theme/color_theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  String activeTab = "All";
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
          spacing: 20,
          children: [
            _buildTrending(),
            Center(
              child: Text(
                "NEW ARRIVAL",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            // categories
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _categoryOption("All", activeTab == "All"),
                _categoryOption("Apparel", activeTab == "Apparel"),
                _categoryOption("Dress", activeTab == "Dress"),
                _categoryOption("Tshirt", activeTab == "Tshirt"),
                _categoryOption("Bag", activeTab == "Bag"),
              ],
            ),
            GridView.count(crossAxisCount: 2, shrinkWrap: true, children: [
              
              ],
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

  Widget _categoryOption(String title, bool isActive) {
    return TextButton(
      onPressed: () {
        setState(() {
          activeTab = title;
        });
      },
      child: Text(
        title,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
          color: isActive ? ColorTheme.titleActive : ColorTheme.placeholder,
        ),
      ),
    );
  }
}
