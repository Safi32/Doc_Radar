import 'package:flutter/material.dart';

class RatingsAndReviewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'My Ratings and Reviews',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            // Handle back button press
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/graph.png",
              scale: 3,
            ),
            SizedBox(height: 20),
            ReviewCard(
              name: 'Hadiyah',
              reviewText:
                  'Lorem fre dst th gd erwe digvdf sf sfsr sd ef df ... This is a very long review text that will overflow and test the overflow handling.',
              rating: 4,
            ),
            SizedBox(height: 10),
            ReviewCard(
              name: 'Loreen',
              reviewText:
                  'Lorem fre dst th gd erwe digvdf sf sfsr sd ef df ...',
              rating: 5,
            ),
            SizedBox(height: 10),
            ReviewCard(
              name: 'Adeenah',
              reviewText:
                  'Lorem fre dst th gd erwe digvdf sf sfsr sd ef df ...',
              rating: 3,
            ),
            SizedBox(height: 10),
            ReviewCard(
              name: 'Anfal',
              reviewText:
                  'Lorem fre dst th gd erwe digvdf sf sfsr sd ef df ...',
              rating: 4,
            ),
          ],
        ),
      ),
    );
  }
}

class ReviewCard extends StatelessWidget {
  final String name;
  final String reviewText;
  final int rating;

  ReviewCard({
    required this.name,
    required this.reviewText,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 64,
                  width: 74,
                  decoration: BoxDecoration(
                    color: Color(0xffE4EDF8),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ), // Placeholder for profile image
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
                    Row(
                      children: List.generate(
                        5,
                        (index) => Icon(
                          index < rating ? Icons.star : Icons.star_border,
                          color: Colors.amber,
                          size: 16,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Lorem fre dsf th bnbn sefsr sd ef df ...",
                      // maxLines: 2,
                      // overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 10, color: Color(0xff726F6F)),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
