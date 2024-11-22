import 'package:flutter/material.dart';

class MyAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset('assets/images/1.jpg'), // Background image
          Transform.translate(
            offset: Offset(0, 100), // Positioning the profile section
            child: Column(
              children: <Widget>[
                _buildProfileImage(context),
                _buildProfileDetails(context),
                _buildActions(context),
              ],
            ),
          ),
        ],
      ),
    );
  }
@override
  Widget _buildProfileImage(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      child: ClipOval(
        child: Image.asset(
          'assets/images/12.jpg', // Profile image
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }

  Widget _buildProfileDetails(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            "Wolfram Barkovich",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
          ),
          _buildDetailsRow('Age', '4'),
          _buildDetailsRow('Status', 'Good Boy'),
        ],
      ),
    );
  }

  Widget _buildDetailsRow(String heading, String value) {
    return Row(
      children: <Widget>[
        Text(
          '$heading:',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 8), // Space between heading and value
        Text(value),
      ],
    );
  }

  Widget _buildActions(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _buildIcon(Icons.restaurant, 'Feed'),
        _buildIcon(Icons.favorite, 'Pet'),
        _buildIcon(Icons.directions_walk, 'Walk'),
      ],
    );
  }

  Widget _buildIcon(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Icon(icon, size: 40),
          Text(text),
        ],
      ),
    );
  }
}

