import 'package:flutter/material.dart';

class Buildelevatedbutton extends StatelessWidget {
  final VoidCallback onpress;
  final String title;
  final IconData icon;
  const Buildelevatedbutton({
    super.key,
    required this.onpress,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        child: ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(icon),
          label: Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purple,
            padding: const EdgeInsets.symmetric(vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 5,
          ),
        ),
      ),
    );
  }
}
