import 'package:flutter/material.dart';

class MockupScreen extends StatelessWidget {
  // Function to populate data or execute an action
  void fillData(BuildContext context) {
    // You can add logic to fill data here.
    // For example, showing a message or filling a form.
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Filling data...')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mockup Screen'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image and Heading Section
            Center(
              child: Column(
                children: [
                  // Banana Fiber Image
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.blue, // Background color of the tin
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/banana_fiber.png'), // Add your image to the assets folder
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  // Heading Text: Ageratum
                  Text(
                    'Ageratum',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[900], // Deep green text color
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),

            // Rating Section
            Row(
              children: [
                Icon(Icons.star, color: Colors.blue, size: 24), // Blue star icon
                SizedBox(width: 8),
                Text(
                  '4.8 (268 Reviews)',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.green[700], // Green text color
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),

            // Description Section
            Text(
              'Ageratum is a genus of 40 to 60 tropical and warm temperate flowering annuals and perennials from the family Asteraceae, tribe Eupatorieae. Most species are native to Central America....',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black87, // Subtle text color
              ),
            ),
            TextButton(
              onPressed: () {
                fillData(context); // Call fillData() when button is pressed
              },
              child: Text(
                'Read more',
                style: TextStyle(color: Colors.blue),
              ),
            ),
            SizedBox(height: 16),

            // Details Section
            Table(
              border: TableBorder.all(color: Colors.grey), // Table border
              children: [
                TableRow(children: [
                  detailCell('Size'),
                  detailCell('Plant'),
                  detailCell('Height'),
                  detailCell('Humidity'),
                ]),
                TableRow(children: [
                  detailCell('Medium'),
                  detailCell('Orchid'),
                  detailCell('12.6'),
                  detailCell('82'),
                ]),
              ],
            ),
            SizedBox(height: 16),

            // Price and Add to Cart Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Price Text
                Text(
                  '\$39.99',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.green[900], // Deep green text color
                  ),
                ),
                // Add to Cart Button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green, // Green button
                  ),
                  onPressed: () {
                    // Add to Cart Action
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Added to Cart!')),
                    );
                  },
                  child: Text(
                    'Add to Cart',
                    style: TextStyle(color: Colors.white), // White text color
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Helper Function to Create Table Cells
  Widget detailCell(String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: TextStyle(fontSize: 14),
        textAlign: TextAlign.center,
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MockupScreen(),
    debugShowCheckedModeBanner: false,
  ));
}
