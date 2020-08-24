import 'package:flutter/material.dart';
import 'package:shopmate/app/model/item_model.dart';
import 'package:shopmate/app/widgets/button.dart';

class AddItem extends StatefulWidget {
  @override
  _AddItemState createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {
  String title;
  String category;
  String price;
  String description;
  String discount;

  GlobalKey<FormState> _itmeFormkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 60.0, horizontal: 16.0),
//          width: MediaQuery.of(context).size.width,
//          height: MediaQuery.of(context).size.height,
          child: Form(
            key: _itmeFormkey,
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 15.0),
                  width: MediaQuery.of(context).size.width,
                  height: 170.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/index.png")),
                      borderRadius: BorderRadius.circular(10.0)),
                ),
                _buildTextFormField("Item title"),
                _buildTextFormField("Category"),
                _buildTextFormField("Description", maxLine: 5),
                _buildTextFormField("Price"),
                _buildTextFormField("Discount"),
                SizedBox(
                  height: 50.0,
                ),
                GestureDetector(
                  onTap: (){
                    if(_itmeFormkey.currentState.validate()){
                      _itmeFormkey.currentState.save();

                      Item(
                        name: title,
                        category: category,
                        description: description,
                        price: double.parse(price),
                        discount: double.parse(discount),
                      );
                    }
                  },
                  child: Button(
                    btnText: "add Item ",
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextFormField(String hint, {int maxLine = 1}) {
    return TextFormField(
      decoration: InputDecoration(hintText: "$hint"),
      maxLines: maxLine,
      keyboardType: hint == "Price" || hint == "Discount"
          ? TextInputType.number
          : TextInputType.text,
      validator: (String value)
      {
        if(value.isEmpty && hint =="Item title"){
          // ignore: missing_return
          return "Item title is required";
        }
        if(value.isEmpty && hint =="Category"){
          // ignore: missing_return
          return" Category is required";
        }
        if(value.isEmpty && hint =="Description"){
          // ignore: missing_return
          return "Description is required";
        }
        if(value.isEmpty && hint =="Price"){
          // ignore: missing_return
          return"Price is required";
        }
//        if(value.isEmpty && hint =="Discount"){
//          // ignore: missing_return
//          return "Discount is required";
//        }

      },
      onChanged: (String value){
        if(hint == "Item title"){
          title = value;
        }
        if(hint == "Category"){
        category = value;
        }
        if(hint == "Description"){
        description = value;
        }
        if(hint == "Price"){
        price = value;
        }
        if(hint == "Discount"){
        discount = value;
        }
      },
    );
  }
}
