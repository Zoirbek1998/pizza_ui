import 'package:flutter/material.dart';

import '../consts.dart';

class QuantityButton extends StatelessWidget {
  const QuantityButton({
    super.key,
    required this.icon,
  });

  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
          // shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: brown2.withOpacity(0.2),
                offset: const Offset(0, 3),
                blurRadius: 2,
                spreadRadius: 1),
          ],
        ),
        child: icon);
  }
}
