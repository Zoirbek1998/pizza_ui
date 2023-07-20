import 'package:flutter/material.dart';

import '../consts.dart';

class PizzaPlate extends StatelessWidget {
  const PizzaPlate({
    super.key,
    required this.selectedSize,
  });

  final int selectedSize;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: selectedSize == 0
          ? 290
          : selectedSize == 1
              ? 310
              : 330,
      height: selectedSize == 0
          ? 290
          : selectedSize == 1
              ? 310
              : 330,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: brown2.withOpacity(0.5),
                offset: const Offset(0, 20),
                spreadRadius: 1,
                blurRadius: 30)
          ],
          shape: BoxShape.circle,
          image: const DecorationImage(
              image: AssetImage('assets/pizza-plate.png'), fit: BoxFit.cover)),
      duration: const Duration(milliseconds: 600),
      curve: Curves.bounceIn,
    );
  }
}
