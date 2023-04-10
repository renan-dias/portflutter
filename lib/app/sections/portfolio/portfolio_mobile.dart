import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portflutter/app/utils/project_utils.dart';
import 'package:portflutter/app/widgets/custom_text_heading.dart';
import 'package:portflutter/changes/links.dart';
import 'package:portflutter/changes/strings.dart';
import 'package:portflutter/core/configs/configs.dart';
import 'package:portflutter/core/util/constants.dart';
import 'package:sizer/sizer.dart';

import 'widgets/project_card.dart';

class PortfolioMobileTab extends StatelessWidget {
  const PortfolioMobileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        const CustomSectionHeading(text: "\n Projetos"),
        Space.y(3.w)!,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: CustomSectionSubHeading(text: protfolioSubHeading),
        ),
        Space.y(5.w)!,
        CarouselSlider.builder(
          itemCount: projectUtils.length,
          itemBuilder: (BuildContext context, int itemIndex, int i) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: ProjectCard(project: projectUtils[i]),
          ),
          options: CarouselOptions(
            height: height * 0.4,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            enlargeCenterPage: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            enableInfiniteScroll: false,
          ),
        ),
        Space.y(3.w)!,
        OutlinedButton(
          onPressed: () => openURL(gitHub),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Veja em detalhes',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        )
      ],
    );
  }
}
