import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.adb, //this is an android icon for putting it at leading icon
          color: Colors.white,
        ),
        title: Text(
          "Appbar Practice", //the text of the appbar
          style: TextStyle(color: Colors.white), //making the colors white
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings), //making icons that looks like settings
            onPressed: () {},//im only make an anonymouse method from now
          ),
          IconButton(icon: Icon(Icons.exit_to_app), //making icons that looks like exit from the app
          onPressed: () {})//i only make an anonymous method for now
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient( //using 2 colors to make a gradiant
                  colors: [ //using array so we can put 2 colors inside
                Color(0xff0096ff),
                Color(0xff6610f2)
              ], //hexadesimal of color blue and purple
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight),
                  image: DecorationImage(image: AssetImage("assets/patern.png"), fit: BoxFit.none, repeat: ImageRepeat.repeat 
                  //above this im using decoration image to put the image of the asset we import, so the appbar didnt only  have an gradient but have a pattern too, fit boxfit to make the picture didnt stretch, and repeat to make it enough to cover the whole appbar width
                  ),
        ),
      ),
    ),
    body: Center(child: Text("In This Project We Focused On The Appbar"),),
    ),
    );
  }
}
