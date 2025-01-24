import 'package:flutter/material.dart';

class customRow extends StatelessWidget {
  final imge;
  final text;
  customRow({this.imge, this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Image.asset(
              imge,
              scale: 3,
            ),
            Text(
              text,
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ],
    );
  }
}
