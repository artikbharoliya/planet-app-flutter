import 'dart:ui' as prefix0;
import 'dart:ui';

import 'package:flutter/material.dart';

import 'MainPageView.dart';



class MainUI extends StatefulWidget {
  @override
  _MainUIState createState() => _MainUIState();
}

class _MainUIState extends State<MainUI> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset('asset/nebula.jpg',
              height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover
                
            ),

          BackdropFilter(
               filter: prefix0.ImageFilter.blur(
                 sigmaX: 2, sigmaY: 2,
               ),
            child:Scaffold(
                  appBar: new AppBar(
                    title: new Center(
                        child: Text("Planet App",
                                    textAlign: TextAlign.center,
                                    
                                    style: TextStyle(color: Colors.white54, fontSize: 23),
                                                        
                                    )
                                ),
                    backgroundColor: Colors.transparent,

                    

                  ),
                  backgroundColor: Colors.transparent,
                ),
        ),
          
       
        

        Center(
          child: MainPageView()
        )
      ],
    );
  }
}