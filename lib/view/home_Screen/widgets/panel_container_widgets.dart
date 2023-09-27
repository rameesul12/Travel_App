import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:travel_app/controller/home_screen_controller.dart';

import '../../../utilis/colors.dart';
import '../../../utilis/sized_box.dart';
import 'animation_container_widgets.dart';

class PanelContainerWidget extends StatelessWidget {
  const PanelContainerWidget({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(14), topRight: Radius.circular(14)),
          color: textWhite
          ),
      padding: const EdgeInsets.only(top: 10, left: 18, bottom: 10, right: 5),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //sizedBoxHeight40,
            Center(
              child: Container(
                height: Adaptive.h(0.7),
                width: Adaptive.w(9),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade200),
              ),
            ),
            SizedBox(height: Adaptive.h(2),),
            SizedBox(
              height: Adaptive.h(14),
              width: Adaptive.w(double.infinity),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row( 
                 
                  children: [
                    AnimationContainerWidget(images: images, index: 0,),
                    sizedBoxWidth40,
                    AnimationContainerWidget(images: images, index: 1,),
                     sizedBoxWidth40,
                      AnimationContainerWidget(images: images, index: 2,),
                      sizedBoxWidth40,
                      AnimationContainerWidget(images: images, index: 3,),
            
                  ],
                ),
              )
            ),
            sizedBoxHeight30,
            Consumer<HomeScreenProvider>(
              builder: (context,textValue,child) {
                return textValue.isValue==true? Text(
                  '''Since the 17th century, Paris has been one of the world's major centres of finance, diplomacy, commerce, culture, fashion, gastronomy and many areas. For its leading role in  ''',
                  style: TextStyle(color: colorText, fontSize: Adaptive.sp(16),fontWeight: FontWeight.w400),
                ):const Text('');
              }
            ),
            sizedBoxHeight20,
            Center(
                child: Text(
              'ReadMore',
              style: TextStyle(
                  color: Colors.blue.shade200, fontWeight: FontWeight.bold),
            )),
            sizedBoxHeight20,
            Stack(
              children: [
                SizedBox(
                  width: Adaptive.w(90),
                  height: Adaptive.h(20),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        'assets/images/image5.webp',
                        fit: BoxFit.cover,
                      )),
                ),
                Positioned(
                    left: Adaptive.h(17.5),
                    top: Adaptive.h(6.5),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: colorTransperent,
                      child: Image.asset(
                        'assets/images/icons8_circled_play_100.png',
                        fit: BoxFit.cover,
                        height: Adaptive.h(double.infinity),
                        width: Adaptive.w(double.infinity),
                        
                      ),
                    ))
              ],
            ),
            sizedBoxHeight20,
            Text(
              'Top Sights',
              style: TextStyle(color: colorText, fontSize: Adaptive.sp(20)),
            ),
            sizedBoxHeight10,
            SizedBox(
              height: Adaptive.h(10),
              width: Adaptive.w(90),
              child: Row(
                children: [
                  SizedBox(
                    width: Adaptive.w(35),
                    height: Adaptive.h(9.2),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          'assets/images/image6.jpg',
                          fit: BoxFit.fill,
                        )),
                  ),
                  sizedBoxWidth50,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      sizedBoxHeight10,
                      Text(
                        'Visit Parc Astérix ',
                        style: TextStyle(
                            color: colorText,
                            fontSize: Adaptive.sp(17),
                            fontWeight: FontWeight.bold),
                      ),
                    //sizedBoxHeight10,
      
                     Text(
                        'Enjoy a range of shows',
                        style: TextStyle(
                          color: colorText,
                          fontSize: Adaptive.sp(15)
                        ),
                      ),
                      
                      Text(
                        'Enjoy a range ',
                        style: TextStyle(
                          color: colorText,
                          fontSize: Adaptive.sp(15)
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            sizedBoxHeight100
          ],
        ),
      ),
    );
  }
}

