import 'package:flutter/material.dart';
import 'package:ecommerce/widgets/itemdetails.dart';

List<Color> colors = [Colors.blue, Colors.orange, Colors.grey];

Widget containers() {
  return Row(
    children: List.generate(
      3,
      (index) => Container(
        height: 20,
        width: 20,
        padding: const EdgeInsets.all(4),
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: index == index ? Colors.white : Colors.transparent,
        ),
        child: Container(
          height: 15,
          width: 15,
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: productInfo[index].color),
        ),
      ),
    ),
  );
}

Widget smallContainer(String text) {
  return Container(
    height: 28,
    width: 30,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.grey.shade200,
    ),
    child: Center(
      child: Text(
        text,
        style: TextStyle(color: Colors.black, fontSize: 17),
      ),
    ),
  );
}
