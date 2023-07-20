import 'package:flutter/material.dart';

import '../consts.dart';

class SizeOptionItem extends StatelessWidget {
  const SizeOptionItem({
    super.key,
    required this.selectedSize,
    required this.sizeOptions,
  });

  final bool selectedSize;
  final String sizeOptions;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 56,
        height: 56,
        decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(50),
          color: selectedSize ? yellow : white.withOpacity(0.1),
          boxShadow: selectedSize
              ? [
                  BoxShadow(
                      color: brown2.withOpacity(0.4),
                      blurRadius: 30,
                      spreadRadius: 2)
                ]
              : null,
        ),
        child: Center(
            child: Text(
          sizeOptions,
          style: font.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: selectedSize ? black : black.withOpacity(0.5)),
        )));
  }
}
