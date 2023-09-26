import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../utilis/colors.dart';
import '../../../utilis/sized_box.dart';

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
          sizedBoxHeight40,
          SizedBox(
            height: Adaptive.h(14),
            width: Adaptive.w(double.infinity),
            child: ListView.separated(
              //  shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => SizedBox(
                width: Adaptive.w(5),
              ),
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    //  sizedBoxWidth20,
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: SizedBox(
                        height: Adaptive.h(16),
                        width: Adaptive.w(28),

                        //  padding:const EdgeInsets.only(left: 10),
                        child: Image.asset(
                          images[index],
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                );
              },
              itemCount: images.length,
            ),
          ),
          sizedBoxHeight30,
          Text(
            '''Since the 17th century, Paris has been one of the world's major centres of finance, diplomacy, commerce, culture, fashion, gastronomy and many areas. For its leading role in the arts and sciences, ''',
            style: TextStyle(color: colorText, fontSize: Adaptive.sp(16)),
          ),
          sizedBoxHeight30,
          Center(
              child: Text(
            'ReadMore',
            style: TextStyle(
                color: Colors.blue.shade200, fontWeight: FontWeight.bold),
          )),
          sizedBoxHeight40,
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
            height: Adaptive.h(13),
            width: Adaptive.w(90),
            child: Row(
              children: [
                SizedBox(
                  width: Adaptive.w(35),
                  height: Adaptive.h(10),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        'assets/images/image6.jpg',
                        fit: BoxFit.fill,
                      )),
                ),
                sizedBoxWidth20,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                 // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    sizedBoxHeight20,
                    Text(
                      'Visit Parc Astérix ',
                      style: TextStyle(
                          color: colorText,
                          fontSize: Adaptive.sp(17),
                          fontWeight: FontWeight.bold),
                    ),
                  sizedBoxHeight10,

                  const Text(
                      'Enjoy a range of shows',
                      style: TextStyle(
                        color: colorText,
                      ),
                    ),
                    
                  const  Text(
                      'Enjoy a range ',
                      style: TextStyle(
                        color: colorText,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
