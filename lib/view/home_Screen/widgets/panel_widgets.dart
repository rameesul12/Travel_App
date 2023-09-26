import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:travel_app/utilis/colors.dart';
import 'package:travel_app/utilis/sized_box.dart';
import 'package:travel_app/view/home_Screen/widgets/stats_widgets.dart';

class PanelWidgets extends StatelessWidget {
   PanelWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      
      children: [
       StatsWidgets(name: 'Eiffel Tower',place: 'Paris,France',onSale: true,),
       Expanded(
        child: buildInfo()
       
       ),
      ],
    );
  }

  buildInfo() =>GestureDetector(
    behavior: HitTestBehavior.opaque,
    onTap: () {},
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(14),topRight: Radius.circular(14)),
        color: textWhite
      ),
      padding:const EdgeInsets.only(top: 10,left: 10,bottom: 10,right: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          sizedBoxHeight40,
          SizedBox(
            height: Adaptive.h(14),
            width: Adaptive.w(double.infinity),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => sizedBoxWidth20,
              itemBuilder:(context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: SizedBox(
                  height: Adaptive.h(12),
                  width: Adaptive.w(30),
                               
                //  padding:const EdgeInsets.only(right: 3),
                  child: Image.asset(images[index],fit: BoxFit.fill,),
                  ),
                );
              }, 
              itemCount: images.length,
              ),
          )
        ],
      ),
    ),
  );
final  List<String>images=[
    'assets/images/image1.jpg',
    'assets/images/image2.jpg',
    'assets/images/image3.jpg',
    'assets/images/image4.jpg'
  ];
}