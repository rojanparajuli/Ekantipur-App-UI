import 'package:flutter/material.dart';

class AllNewsScreen extends StatelessWidget {
  const AllNewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.blue, 
            padding: const EdgeInsets.symmetric(vertical: 16.0), 
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround, 
              children: <Widget>[
                _buildNavBarItem('Home'),
                _buildNavBarItem('World'),
                _buildNavBarItem('Politics'),
                _buildNavBarItem('Business'),
                _buildNavBarItem('Technology'),
                _buildNavBarItem('Science'),
                _buildNavBarItem('Health'),
                _buildNavBarItem('Sports'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavBarItem(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white), 
        borderRadius: BorderRadius.circular(4.0), 
      ),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white), 
      ),
    );
  }
}