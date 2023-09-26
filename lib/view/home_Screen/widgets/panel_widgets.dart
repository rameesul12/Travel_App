import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/controller/home_screen_controller.dart';
import 'package:travel_app/view/home_Screen/widgets/panel_container_widgets.dart';
import 'package:travel_app/view/home_Screen/widgets/stats_widgets.dart';

class PanelWidgets extends StatelessWidget {
  PanelWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeScreenProvider>(
      builder: (context,checking,child) {
        return Column(
          children: [
          checking.isValue==false?  StatsWidgets(
              name: 'Eiffel Tower',
              place: 'Paris,France',
              onSale: true,
            ):const SizedBox(),
            Expanded(child: buildInfo()),
          ],
        );
      }
    );
  }

  buildInfo() => GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {},
        child: PanelContainerWidget(images: images),
      );
  final List<String> images = [
    'assets/images/image1.jpg',
    'assets/images/image2.jpg',
    'assets/images/image3.jpg',
    'assets/images/image4.jpg'
  ];
}


