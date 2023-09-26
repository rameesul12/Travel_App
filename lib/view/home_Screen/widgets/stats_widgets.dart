import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:travel_app/utilis/colors.dart';

class StatsWidgets extends StatelessWidget {
   StatsWidgets({super.key,this.name,this.place,this.onSale});
  
  String? name;
  String? place;
  bool? onSale;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: Adaptive.h(4),
            width: Adaptive.w(25),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(24)
            ),
            child:Center(child: const Text('On Sale',style: TextStyle(color: textWhite,fontWeight: FontWeight.bold),)),
          ),
          Text(name!,style: TextStyle(color: textWhite,fontSize:Adaptive.sp(18),fontWeight:FontWeight.bold),),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.location_on_outlined,color: textWhite,size:Adaptive.h(2),),
              Text(place!,style: TextStyle(color: textWhite,fontSize: Adaptive.sp(10)),)
            ],
          )
    
        ],
      ),
    );
  }
}