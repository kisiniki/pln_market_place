import 'package:flutter/material.dart';

class ContainerShadow extends StatelessWidget {
  final Widget? child;
  final double paddingHorizontal;
  final double paddingVertical;
  final double radius;
  final bool reverse;

   const ContainerShadow({
    this.child,
    this.paddingHorizontal = 0.0,
    this.paddingVertical = 0.0,
    this.radius = 4.0,
    this.reverse = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: paddingHorizontal, vertical: paddingVertical),
      width: double.infinity,
      child: child,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 16,
            offset: reverse ? Offset(4, 0) : Offset(0, 4)
          )
        ],
        borderRadius: BorderRadius.all(Radius.circular(radius)),
      )
    );
  }
}