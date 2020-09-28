import 'package:flutter/material.dart';

void main() => runApp(Store());

class Store extends StatefulWidget {
  @override
  _StoreState createState() => _StoreState();
}

class _StoreState extends State<Store> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "فروشگاه",
            style: TextStyle(color: Colors.black45,fontFamily: "Vazir"),
          ),
          centerTitle: true,
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black45,
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.map,
                color: Colors.black45,
              ),
            )
          ],
        ),
      ),
    );
  }
}
