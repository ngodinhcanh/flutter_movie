import 'package:flutter/material.dart';
import 'package:flutter_movie/configs/themes/text_style.dart';
import 'package:flutter_movie/modules/home/components/category_bar.dart';
import 'package:flutter_movie/modules/home/components/coming_soon.dart';
import 'package:flutter_movie/modules/home/components/home_header.dart';
import 'package:flutter_movie/modules/home/components/promo.dart';
import 'package:flutter_movie/modules/home/components/search_bar.dart';
import 'package:flutter_movie/modules/home/components/slider_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          HomeHeader(size: size),
          // Search Bar
          SearchBar(size: size),
          // Categories Bar
          CategoryBar(size: size),
          //Title
          buildTitle('Now Playing'),
          //Slider
          SliderBar(size: size),
          //Title
          buildTitle('Coming Soon'),
          //ComingSoon
          const ComingSoon(),
          //Title
          buildTitle('Promo'),

          Promo(size: size),
          Promo(size: size),
          Promo(size: size),
        ],
      ),
    ));
  }

  Padding buildTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Text(
        title,
        style: TxtStyle.heading2,
      ),
    );
  }
}
