import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:travel_app/controller/home_screen_controller.dart';

class AnimationContainerWidget extends StatelessWidget {
   const AnimationContainerWidget({
    super.key,
    required this.images, required this.index,

  });

  final List<String> images;
  final int index;
 

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeScreenProvider>(
      builder: (context,value,child) {
        return ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: SizedBox(
              height: Adaptive.h(14),
              width: Adaptive.w(28),
          
              //  padding:const EdgeInsets.only(left: 10),
              child: Image.asset(
                images[index],
                fit: BoxFit.fill,
              ),
            ),
        );
      }
    );
  }
}
