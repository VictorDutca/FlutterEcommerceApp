import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final color;
  Product(
      {this.id,
      this.image,
      this.title,
      this.price,
      this.description,
      this.size,
      this.color});
}

List<Product> products = [
  Product(
      id: 1,
      title: "One Plus 7",
      price: 460,
      size: 12,
      description: dummyText,
      image: "assets/images/onePlus7.jpg",
      color: Color.fromARGB(250, 191, 191, 213)),
  Product(
      id: 2,
      title: "One Plus 8",
      price: 650,
      size: 14,
      description: dummyText,
      image: "assets/images/onePlus8.jpg",
      color: Color.fromARGB(250, 42, 84, 80)),
  Product(
      id: 3,
      title: "Realmi 6",
      price: 205,
      size: 10,
      description: dummyText,
      image: "assets/images/realmi6.jpg",
      color: Color.fromARGB(250, 73, 95, 196)),
  Product(
      id: 4,
      title: "Realmi 6 Pro",
      price: 255,
      size: 11,
      description: dummyText,
      image: "assets/images/realmi6Pro.jpg",
      color: Color.fromARGB(250, 68, 24, 72)),
  Product(
      id: 5,
      title: "Xiaomi Redmi Note 8",
      price: 140,
      size: 12,
      description: dummyText,
      image: "assets/images/XiaomiRedmiNote8.jpg",
      color: Color.fromARGB(250, 29, 68, 130)),
  Product(
      id: 6,
      title: "Xiaomi Redmi Note 9",
      price: 200,
      size: 12,
      description: dummyText,
      image: "assets/images/XiaomiRedmiNote9.jpg",
      color: Color.fromARGB(250, 211, 217, 218))
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
