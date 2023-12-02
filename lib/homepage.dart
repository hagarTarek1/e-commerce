import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/classes/carouseldetails.dart';
import 'package:flutter/material.dart';

import 'classes/data.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomePage> {
  bool _isLoading = true;
  @override
  void initState() {
    getData();
    super.initState();
  }

  void getData() async {
    await DataSeeder.loadData();
    setState(() {});
    _isLoading = false;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(children: [
      CarouselSlider(
      options: CarouselOptions(
      autoPlay: true,
        aspectRatio: 10/5,
        enlargeCenterPage: true,
        viewportFraction: 1,
      ),
      items: DataSeeder.categories.map((item) => (
      CarouselDetails()
      )
      ).toList(),

    ),
      ],),

    );
  }
}
