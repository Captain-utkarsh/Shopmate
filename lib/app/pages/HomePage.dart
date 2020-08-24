import 'package:flutter/material.dart';
import 'package:shopmate/app/widgets/home_top_info.dart';

import '../model/item_model.dart';
import '../widgets/shop_category.dart';
import '../widgets/search_field.dart';
import '../widgets/bought_items.dart';
import '../model/item_model.dart';
import '../data/item_data.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Item> _items = items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top: 50, left: 20, right: 20),
        children: <Widget>[
          HomeTopInfo(),
          SizedBox(
            height: 10.0,
          ),
          ShopCategory(),
          SizedBox(
            height: 10.0,
          ),
          SearchField(),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Frequently Bought items",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                onTap: (){},
                child: Text(
                  "View All",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber),
                ),
              )
            ],
          ),
          SizedBox(height: 10.0,),
          Column(
            children: _items.map(_buildItems).toList(),
          )
        ],
      ),
    );
  }
}

Widget _buildItems(Item item){
  return Container(
    margin: EdgeInsets.only(bottom: 20.0),
    child: BoughtItems(
      id: item.id,
      name: item.name,
      imagePath: item.imagePath,
      category: item.category,
      discount: item.discount,
      price: item.price,
      ratings: item.ratings,
    ),
  );
}
