import 'package:flutter/material.dart';

class IndPage extends StatelessWidget {
  final String PlanetName;
    final String PlanetColor;
    
    final String PlanetRadius;
    final String ImgPath;

    IndPage(this.PlanetName ,this.PlanetColor, this.PlanetRadius, this.ImgPath );
  @override
  Widget build(BuildContext context) {

    
    return Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                              child: Container(
                                              
                                              
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.all(Radius.circular(35)),
                                                  color: Colors.white.withOpacity(0.05),
                                                
                                                ),
                                              child: Column(
                                                children: <Widget>[
                                                        Container(
                                                              

                                                              child: Align(
                                                                alignment: Alignment.topCenter,
                                                                child: Container(
                                                                  margin: EdgeInsets.only(top: 25.0),
                                                                  decoration: BoxDecoration(
                                                                    boxShadow:[ BoxShadow(
                                                                                    color: Colors.black.withOpacity(0.5),
                                                                                    blurRadius: 30.0, // has the effect of softening the shadow
                                                                                    spreadRadius: 1.0, // has the effect of extending the shadow
                                                                                    offset: Offset(
                                                                                      15.0, // horizontal, move right 10
                                                                                      15.0, // vertical, move down 10
                                                                                    ),
                                                                                ),
                                                                        ],

                                                                        borderRadius: new BorderRadius.all(Radius.circular(100)),
                                                                        
                                                                        
                                                                      ),
                                                                  
                                                                  child: CircleAvatar(
                                                                      radius: 100,
                                                                      backgroundColor: Colors.transparent,
                                                                      backgroundImage: AssetImage('$ImgPath'),
                                                                      
                                                                ),
                                                                )
                                                              ),


                                                            ),

                                                            Container(                                                           margin: EdgeInsets.only(top: 70),
                                                                      child: Text("Name: $PlanetName", 
                                                                      style: Theme.of(context).textTheme.title
                                                                            .merge(TextStyle(color: Colors.white54,
                                                                                              fontSize: 18
                                                                            )),
                                                            ),
                                                            ),
                                                            
                                                            Container(                                                           margin: EdgeInsets.only(top: 25),
                                                                      child: Text("Color: $PlanetColor", 
                                                                      style: Theme.of(context).textTheme.title
                                                                            .merge(TextStyle(color: Colors.white54,fontSize: 18)),
                                                            ),
                                                            ),

                                                            Container(                                                           margin: EdgeInsets.only(top: 25),
                                                                      child: Text("Radius: $PlanetRadius", 
                                                                      style: Theme.of(context).textTheme.title
                                                                            .merge(TextStyle(color: Colors.white54,
                                                                            fontSize: 18)),
                                                            ),
                                                            ),

                                                            
                                                            ],
                                              )


                                              
                                        ),
                        
                          
                        );
  }
}