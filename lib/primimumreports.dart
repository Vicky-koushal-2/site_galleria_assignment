import 'package:flutter/material.dart';

class PremiumReportsPage extends StatefulWidget {
  @override
  _PremiumReportsPageState createState() => _PremiumReportsPageState();
}

class _PremiumReportsPageState extends State<PremiumReportsPage> {
  int selectedIndex = 0;
  List<String> categories = ['Marriage', 'Career', 'Family', 'Health'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x0B195DFF),
      appBar: AppBar(
        backgroundColor: Color(0x0B195DFF),
        title: Text('Premium Reports',style: TextStyle(color: Colors.white),),
        actions: [
          IconButton(
            icon: Icon(Icons.camera_alt,color: Colors.white,),
            onPressed: () {
              // Camera button functionality
            },
          ),
          IconButton(
            icon: Icon(Icons.notifications,color: Colors.white,),
            onPressed: () {
              // Notification button functionality
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Browse our Premium Reports',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                hintText: 'Search marriage, career, etc.',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(

                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none
                ),
filled: true,
                fillColor: Color(0x174469FF
                )
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: categories.asMap().entries.map((entry) {
                int idx = entry.key;
                String category = entry.value;
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = idx;
                    });
                  },
                  child: Column(
                    children: [
                      Text(
                        category,
                        style: TextStyle(
                          color: selectedIndex == idx ? Colors.white : Color(0x245C8AFF),
                        ),
                      ),
                      if (selectedIndex == idx)
                        Container(
                          margin: EdgeInsets.only(top: 4),
                          height: 2,
                          width: 60,
                          color: Colors.blue,
                        ),
                    ],
                  ),
                );
              }).toList(),
            ),
            SizedBox(height: 16),
            Text(
              categories[selectedIndex],
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.grey),
            ),
            SizedBox(height: 16),
            Card(
              elevation: 5,
              color: Color(0x245C8AFF),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Image.network(
                      'https://d30q6eyq078c05.cloudfront.net/media/products/marriage-timing-prediction/marriage-timing-prediction-ph4x3-75903b.webp', // Replace with your image URL
                      height: 180,
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Price: Rs. 999', style: TextStyle(fontSize: 16,color: Colors.white)),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.amber),
                            Text('4.5', style: TextStyle(fontSize: 16,color: Colors.yellow)),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        textAlign: TextAlign.left,
                        'Marriage Timing Predicition',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'This is a brief description of the premium report. It includes useful information about the selected category.',
                      style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OutlinedButton(

                          onPressed: () {

                            // View button functionality
                          },
                          child: Text('View',style: TextStyle(color: Colors.white),),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Purchase button functionality
                          },
                          child: Text('Purchase',style: TextStyle(color: Colors.white),),

                          style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,padding: EdgeInsets.symmetric(horizontal: 70)),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}