import 'package:flutter/material.dart';
import 'package:shopmate/app/pages/signin_page.dart';

import '../widgets/order_card.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Your Shopping Cart",
          style: TextStyle(color: Theme
              .of(context)
              .primaryColor, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        scrollDirection: Axis.vertical,
        children: <Widget>[
          OrderCard(),
          OrderCard(),
          _buildTotalContainer()
        ],
      ),
    );
  }

  Widget _buildTotalContainer() {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      child: Column(
        children: <Widget>[
//          ListTile(
//            leading: Text("Cart Total",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w600,color: Colors.blue[300]),),
//            trailing: Text("450.0",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w600,color: Colors.black),),
//          ),
//          ListTile(
//            leading: Text("Cart Total",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w600,color: Colors.blue[300]),),
//            trailing: Text("450.0",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w600,color: Colors.black),),
//          ),
//          ListTile(
//            leading: Text("Cart Total",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w600,color: Colors.blue[300]),),
//            trailing: Text("450.0",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w600,color: Colors.black),),
//          ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("Cart Total",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w600,color: Colors.blue[300]),),
//            Spacer(),
            Text("450.0",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w600,color: Colors.black),),
          ],
        ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Discount",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w600,color: Colors.blue[300]),),
//            Spacer(),
              Text("5.0",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w600,color: Colors.black),),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("GST",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w600,color: Colors.blue[300]),),
//            Spacer(),
              Text("1.0",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w600,color: Colors.black),),
            ],
          ),
          Divider(
            height: 35.0,color: Color(0xFFd3d3d3),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Sub Total",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w600,color: Colors.blue[300]),),
//            Spacer(),
              Text("432.775",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w600,color: Colors.black),),
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => SignInPage()));
            },
            child: Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(25.0)
              ),
              child: Center(
                child: Text("Proceed to Checkout",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
              ),
            ),
          )
        ],
      ),
    );
  }
}
