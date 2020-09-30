import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Product-video15.dart';

class DescrictionPage extends StatelessWidget {
  Product _product;

  DescrictionPage(this._product);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 5,
          ),
          Align(
            child: Text(
              "Shoes",
              style: TextStyle(
                  fontFamily: "Varela", color: Colors.red[700], fontSize: 40),
            ),
            alignment: Alignment.topLeft,
          ),
          SizedBox(
            height: 5,
          ),
          Center(
            child: Image.network(
              _product.imageUrl,
              height: 265,
              width: 265,
            ),
          ),
          Text(
            _product.price,
            style: TextStyle(
              color: Colors.red[700],
              fontFamily: "Vazir",
              fontSize: 30,
            ),
          ),
          Text(
            _product.productName,
            style: TextStyle(
              color: Colors.grey[700],
              fontFamily: "Vazir",
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.only(left: 45, right: 45),
            child: Text(
              _product.description,
              style: TextStyle(
                color: Colors.grey[500],
                fontFamily: "Vazir",
                fontSize: 14,
              ),
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Align(
              child: Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.red[500],
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Center(
                    child: Text(
                      "افزودن به سبد خرید",
                      style: TextStyle(
                          fontFamily: "Vazir",
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  ),
                  height: 40,
                  width: MediaQuery.of(context).size.width - 50,
                ),
              ),
              alignment: Alignment.bottomCenter,
            ),
          ),
        ],
      ),
    );
  }
}
