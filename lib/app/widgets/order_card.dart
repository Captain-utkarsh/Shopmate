import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 75.0,
              width: 45.0,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2.2,
                  color: Color(0xFFD3D3D3),
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                children: <Widget>[
                  InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.keyboard_arrow_up,
                        color: Color(0xFFD3D3D3),
                      )),
                  Text(
                    "1",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Color(0xFFD3D3D3),
                    ),
                  ),
                  InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.keyboard_arrow_down,
                        color: Color(0xFFD3D3D3),
                      )),
                ],
              ),
            ),
            SizedBox(
              width: 15.0,
            ),
            Container(
              height: 80.0,
              width: 80.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/m1.jpeg"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(50.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 5.0,
                      offset: Offset(2.0, 2.0),
                    )
                  ]),
            ),
            SizedBox(
              width: 20.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "T-shirt",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 25.0),
                ),
                SizedBox(height: 5.0),
                Text(
                  "4.5",
                  style: TextStyle(color: Colors.orange, fontSize: 18.0),
                )
              ],
            ),
            Spacer(),
            InkWell(
              onTap: (){},
                child:Icon(Icons.cancel, color: Theme.of(context).primaryColor))
          ],
        ),
      ),
    );
  }
}
