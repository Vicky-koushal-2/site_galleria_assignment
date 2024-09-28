import 'package:flutter/material.dart';

class PlanetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Planet Page'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          // Half-screen image of a planet
          Container(
            height: MediaQuery.of(context).size.height / 2,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/planet_image.jpg'), // Add your planet image here
                fit: BoxFit.cover,
              ),
            ),
          ),

          // List of categories with small images and text
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildCategoryRow('assets/marriage_icon.png', 'Marriage'),
                  buildCategoryRow('assets/career_icon.png', 'Career'),
                  buildCategoryRow('assets/family_icon.png', 'Family'),
                  buildCategoryRow('assets/health_icon.png', 'Health'),
                  buildCategoryRow('assets/finance_icon.png', 'Finance'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Function to build a row with small image and corresponding text
  Widget buildCategoryRow(String imagePath, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          // Small image
          Image.asset(
            imagePath,
            width: 40,
            height: 40,
          ),
          SizedBox(width: 16),
          // Text next to the image
          Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
