import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({
    super.key,
    required this.weightDescription,
    required this.icon,
    required this.color,
  });
  final String weightDescription;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      margin: const EdgeInsets.symmetric(horizontal: 33, vertical: 16),
      decoration: BoxDecoration(
        color: const Color(0xFF11131D),
        borderRadius: BorderRadius.circular(16),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Row(
          children: [
            Container(width: 5, color: color),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEALTH CATEGORY',
                    style: TextStyle(
                      color: Color(0xFFAAAAB7),
                      fontSize: 11,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.5,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    weightDescription,
                    style: TextStyle(
                      color: color,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(icon, color: color, size: 32),
            ),
          ],
        ),
      ),
    );
  }
}
