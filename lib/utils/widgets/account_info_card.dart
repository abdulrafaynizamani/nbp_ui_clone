import 'package:flutter/material.dart';

class AccountInfoCard extends StatelessWidget {
  const AccountInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 175,
      left: 16,
      right: 16,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        height: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.1),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Aslam',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.copy, color: Colors.grey, size: 19),
                    SizedBox(width: 16),
                    Icon(Icons.share, color: Colors.grey, size: 18),
                    SizedBox(width: 12),
                  ],
                ),
              ],
            ),
            SizedBox(height: 3),
            Text(
              'PK79NBPA0096003107221915',
              style: TextStyle(color: Colors.grey[700]),
            ),
            SizedBox(height: 15),
            // Pkr Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'PKR',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(width: 10),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '246,046',
                            style: TextStyle(fontSize: 28, color: Colors.black),
                          ),
                          TextSpan(
                            text: '.88',
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Icon(Icons.visibility, size: 18, color: Colors.grey),
                ),
                // SizedBox(width: 10),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
