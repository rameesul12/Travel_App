import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:travel_app/view/home_Screen/widgets/panel_widgets.dart';

import '../../utilis/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light
            .copyWith(statusBarColor: colorTransperent),
        child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: colorTransperent,
            leading: const Icon(
              Icons.arrow_downward,
              color: textWhite,
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_border_rounded,
                    color: textWhite,
                  )),
            ],
          ),
          body: SlidingUpPanel(
            minHeight: Adaptive.h(40),
            color: colorTransperent,
            body: PageView(
              children: [
                Image.asset('assets/images/eiffel tower.jpg', fit: BoxFit.fill),
              ],
            ),
            panelBuilder: (sc) => PanelWidgets(),
          ),
        ));
  }
}
