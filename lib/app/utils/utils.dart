import 'package:flutter/material.dart';
import 'package:portflutter/app/sections/contact/contact.dart';
import 'package:portflutter/app/sections/home/home.dart';
import 'package:portflutter/app/sections/portfolio/portfolio.dart';
import 'package:portflutter/app/sections/services/services.dart';
import 'package:portflutter/app/widgets/footer.dart';

class BodyUtils {
  static const List<Widget> views = [
    HomePage(),
    // About(),
    Services(),
    Portfolio(),
    Contact(),
    Footer(),
  ];
}
