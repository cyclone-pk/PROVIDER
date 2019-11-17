import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'variable.dart';

class Settigs extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Provider Lib Use"),
          centerTitle: true,
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(vertical: 5.0),
          color: Colors.blue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlatButton(
                onPressed: () {},
                child: Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 50.0,
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Icon(
                  Icons.settings,
                  color: Colors.white,
                  size: 50.0,
                ),
              ),
            ],
          ),
        ),
        body: Consumer<Variable>(
          builder: (context,classinstance,child){
            return Column(
              children: <Widget>[

                Container(
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Text bg Color",
                        style: TextStyle(fontSize: classinstance.font_size, color: classinstance.font_color),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical:8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            GestureDetector(
                                onTap : (){
                                    classinstance.Bgcolor = Colors.green;

                                },
                                child: Container(height: 40,width: 40,color: Colors.green,)),
                            GestureDetector(
                                onTap : (){
                                    classinstance.Bgcolor  = Colors.red;

                                },
                                child: Container(height: 40,width: 40,color: Colors.red,)),
                            GestureDetector(
                                onTap : (){
                                  classinstance.Bgcolor  = Colors.yellow;

                                },
                                child: Container(height: 40,width: 40,color: Colors.yellow,)),
                            GestureDetector(
                                onTap : (){

                                  classinstance.Bgcolor = Colors.grey;

                                },
                                child: Container(height: 40,width: 40,color: Colors.grey,)),
                            GestureDetector(
                                onTap : (){

                                  classinstance.Bgcolor  = Colors.purpleAccent;

                                },
                                child: Container(height: 40,width: 40,color: Colors.purpleAccent,)),

                          ],),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Text Color",
                        style: TextStyle(fontSize: classinstance.font_size, color: classinstance.font_color),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical:8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            GestureDetector(
                                onTap : (){
                                    classinstance.ftcolor = Colors.green;

                                },
                                child: Container(height: 40,width: 40,color: Colors.green,)),
                            GestureDetector(
                                onTap : (){

                                  classinstance.ftcolor= Colors.red;

                                },
                                child: Container(height: 40,width: 40,color: Colors.red,)),
                            GestureDetector(
                                onTap : (){
                                  classinstance.ftcolor = Colors.yellow;

                                },
                                child: Container(height: 40,width: 40,color: Colors.yellow,)),
                            GestureDetector(
                                onTap : (){
                                    classinstance.ftcolor = Colors.grey;

                                },
                                child: Container(height: 40,width: 40,color: Colors.grey,)),
                            GestureDetector(
                                onTap : (){
                                  classinstance.ftcolor  = Colors.purpleAccent;

                                },
                                child: Container(height: 40,width: 40,color: Colors.purpleAccent,)),

                          ],),
                      )
                    ],
                  ),
                ),
                Container(child: Slider(
                    min: 10,
                    max: 50,
                    value: classinstance.font_size, onChanged: (_value){


                    classinstance.ftsize = _value;

                }),)
              ],
            );
          }

        ));
  }
}
