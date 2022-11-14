import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:plant_shop/bottom_bar.dart';
import 'package:plant_shop/home.dart';
import 'package:plant_shop/product_view.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': ((context) => Home()),
      '/product': ((context) => ProductDetail()),
    },
  ));
}
