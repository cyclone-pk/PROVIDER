import 'package:flutter/material.dart';
import 'Settings.dart';
import 'variable.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(builder: (_) => Variable())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Mainpage(),
      ),
    );
  }
}

class Mainpage extends StatefulWidget {
  @override
  _MainpageState createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
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
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Settigs()));
              },
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
        builder: (context,data,child){
          return
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: data.Bg_color,
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    child: Text(
                      "This is Example Text This can be Anything",
                      style: TextStyle(fontSize:data.font_size ,color: data.font_color ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: data.Bg_color,
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    child: Text(
                      "This is Example Text This can be Anything. This is Example Text This can be Anything. This is Example Text This can be Anything. This is Example Text This can be Anything. This is Example Text This can be Anything",
                      style: TextStyle(fontSize:data.font_size ,color: data.font_color),
                    ),
                  ),
                )
              ],
            ),
          );
        }

      ),
    );
  }
}
