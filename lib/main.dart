import 'package:flutter/material.dart';
import 'package:test_app/viedo12-ShopBottomNavigator.dart';
import '';

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
            style: TextStyle(color: Colors.black45, fontFamily: "Vazir"),
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
        body: Padding(
          padding: EdgeInsets.all(15),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 15,
            children: List.generate(10, (int position) {
              return generateItem();
            }),
          ),
        ),
        bottomNavigationBar: ShopBottomNavigator(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red[900],
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}

Card generateItem() {
  return Card(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30))),
    elevation: 4,
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 90,
            height: 90,
            child: Image.network(
                "https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png"),
          ),
          Text(
            "قیمت",
            style: TextStyle(
                fontFamily: "Vazir", color: Colors.red[700], fontSize: 14),
          ),
          Text(
            "عنوان",
            style: TextStyle(
                fontFamily: "Vazir", color: Colors.blueGrey, fontSize: 14),
          )
        ],
      ),
    ),
  );
}
