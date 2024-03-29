import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:planetapp/IndPage.dart';

class MainPageView extends StatefulWidget {

      final Map imgPath = {


        "mercury":"mercury.png",
        "venus":"venus.png",
        "earth":"580b585b2edbce24c47b2705.png",
        "mars":"mars.png",
        "jupiter":"jupiter.png",
        "saturn":"Saturn.png",
        "uranus":"uranus.png",
        "neptune":"neptune.png",
        "pluto":"plutp.jpg",


      };




  @override
  _MainPageViewState createState() => _MainPageViewState();
}

class _MainPageViewState extends State<MainPageView> {
 
  final PageController ctrl =  new PageController(viewportFraction: 0.8);
  int currentpage= 0;
  // @override
  // void initState(){
  //   ctrl.addListener((){
  //     int next = ctrl.page.round();
  //     if(currentpage != next){
  //         setState(() {
  //           currentpage = next; 
  //         });
  //     }
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return

     Container(
                height: 500,
                width: 500,
                  child: 
                    PageView(
                      
                    controller: ctrl,
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      
                      
                      IndPage("Mercury","Gray or slightly Brownish","2439.7","asset/mercury.png"),
                      IndPage("Venus","Pale Yellow","6051.8","asset/venus.png"),
                      IndPage("Earth","Blue-white-brown-green","6378.1","asset/580b585b2edbce24c47b2705.png"),
                      IndPage("Mars","Reddish brown","3396.2","asset/mars.png"),
                      IndPage("Jupiter","Orange-White","71492","asset/jupiter.png"),
                      IndPage("Saturn","Pale Gold","60268","asset/Saturn.png"),
                      IndPage("Uranus","Pale Green","25559","asset/uranus.png"),
                      IndPage("Neptune","Pale Blue","24764","asset/neptune.png"),
                      IndPage("Pluto","light Brown","1195","asset/Pluto.png"),

                      
                    ],
                  )
                
              );
      
   

      
    
      
  }
}
