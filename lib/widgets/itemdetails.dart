import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemDetails {
  final String img, name, size, about;
  final String description;
  final double price;
  final Color color;

  ItemDetails(
      {required this.img,
      required this.color,
      required this.name,
      required this.size,
      required this.about,
      required this.description,
      required this.price});
}

List<ItemDetails> productInfo = [
  ItemDetails(
      img: ('assets/bag8.png'),
      color: Colors.blue,
      name: 'Office Code',
      price: 234.0,
      description: 'Aristocratic Hand Bag',
      size: '12cm',
      about:
          'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum. Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum, Lorem ipsumLorem ipsum. Lorem ipsumLorem ipsumLorem ipsumLorem ipsum'),
  ItemDetails(
      img: ('assets/bag9.png'),
      color: const Color(0xC4E43871),
      name: 'Hand Top',
      price: 234.0,
      description: 'Aristocratic Hand Top Bag',
      size: '18cm',
      about:
          'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum. Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum, Lorem ipsumLorem ipsum. Lorem ipsumLorem ipsumLorem ipsumLorem ipsum'),
  ItemDetails(
      img: ('assets/bag10.png'),
      color: const Color(0xffAEAEAE),
      name: 'New Fashion',
      price: 234.0,
      description: 'Aristocratic Fashion Bag',
      size: '22cm',
      about:
          'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum. Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum, Lorem ipsumLorem ipsum. Lorem ipsumLorem ipsumLorem ipsumLorem ipsum'),
  ItemDetails(
      img: ('assets/bag8.png'),
      color: const Color(0xFF242957),
      name: 'Old Fashion',
      price: 234.0,
      description: 'Aristocratic Old Fasion Bag',
      size: '12cm',
      about:
          'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum. Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum, Lorem ipsumLorem ipsum. Lorem ipsumLorem ipsumLorem ipsumLorem ipsum'),
  ItemDetails(
      img: ('assets/bag13.png'),
      color: Colors.redAccent,
      name: 'Market Choice',
      price: 234.0,
      description: 'Distinct Market Choice',
      size: '12cm',
      about:
          'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum. Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum, Lorem ipsumLorem ipsum. Lorem ipsumLorem ipsumLorem ipsumLorem ipsum'),
  ItemDetails(
      img: ('assets/bag7.png'),
      color: Colors.grey,
      name: 'School Code',
      price: 234.0,
      description: 'Number 1 choice for School runs',
      size: '10cm',
      about:
          'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum. Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum, Lorem ipsumLorem ipsum. Lorem ipsumLorem ipsumLorem ipsumLorem ipsum'),
  ItemDetails(
      img: ('assets/bag9.png'),
      color: Colors.orange,
      name: 'Cross Bag',
      price: 234.0,
      description: 'Aristocratic Cross Bag',
      size: '120cm',
      about:
          'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum. Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum, Lorem ipsumLorem ipsum. Lorem ipsumLorem ipsumLorem ipsumLorem ipsum'),
];
