import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:travel_app/controller/home_screen_controller.dart';
import 'package:travel_app/utilis/sized_box.dart';
import 'package:travel_app/view/home_Screen/widgets/panel_widgets.dart';

import '../../utilis/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider=Provider.of<HomeScreenProvider>(context,listen: false);
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
            centerTitle: true,
            title: Consumer<HomeScreenProvider>(
              builder: (context,titile,child) {
                return titile.isValue==true? Column(
                  children: [
                    Text('Eiffel Tower',style: TextStyle(color: textWhite,fontSize: Adaptive.sp(18),fontWeight: FontWeight.bold),),
                     Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.location_on_outlined,color: textWhite,size:Adaptive.h(2),),
                  Text('Paris,France',style: TextStyle(color: textWhite,fontSize: Adaptive.sp(14)),)
                ],
          ),
                  ],
                ): const Text('');
              }
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
          body: Stack(
            children: [
              SlidingUpPanel(
                minHeight: Adaptive.h(40),
                maxHeight: Adaptive.h(85),
                color: colorTransperent,
                // parallaxEnabled: true,
                // parallaxOffset: 0.5,
                defaultPanelState: PanelState.CLOSED,
                

                body: PageView(
                  pageSnapping: false,

                  children: [
                    Image.asset('assets/images/eiffel tower.jpg', fit: BoxFit.fill),
                  ],
                ),
                panelBuilder: (sc) => PanelWidgets(),
                onPanelSlide: (position) {
                  if (position>0.5) {
                    provider.boolChanging(true);
                  }else{
                    provider.boolChanging(false);
                  }
                },
              ),
              Consumer<HomeScreenProvider>(
                builder: (context,floatValue,child) {
                  return floatValue.isValue==false? Positioned(
                    bottom: Adaptive.h(5),
                    left: Adaptive.h(21),
                    child: const CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 17, 5, 70),
                    radius: 27,
                     backgroundImage: AssetImage('assets/images/plane.png',),
                    

                  )):Positioned(
                       bottom: Adaptive.h(5),
                       left: Adaptive.h(2),
                    child:Container(
                     height: Adaptive.h(6.4),
                     width: Adaptive.w(89),
                     decoration: BoxDecoration(
                      color:const  Color.fromARGB(255, 17, 5, 70),
                      borderRadius: BorderRadius.circular(15)
                     ),
                     child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/plane.png',width: Adaptive.w(10),),
                        sizedBoxWidth10,
                        Text("SEARCH FLIGHTS",style: TextStyle(color: textWhite,fontWeight: FontWeight.bold,fontSize: Adaptive.sp(17)),),
                          sizedBoxWidth40,
                       
                        Container(
            height: Adaptive.h(4),
            width: Adaptive.w(25),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(24)
            ),
            child :const Center(child:  Text('On Sale',style: TextStyle(color: textWhite,fontWeight: FontWeight.bold),)),
          ),
                      ],
                     ),
                    ) 
                    );
                }
              )
            ],
          ),
          
        )
        );
  }
}
