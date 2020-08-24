import 'package:flutter/material.dart';
import 'package:shopmate/app/pages/signup_page.dart';
import 'package:shopmate/app/widgets/button.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _toggleVisibility = true;

  Widget _buildEmailTextField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Your E-mail or Username ",
        hintStyle: TextStyle(color: Colors.grey, fontSize: 18.0),
      ),
    );
  }

  Widget _buildPasswordTextField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Password ",
        hintStyle: TextStyle(color: Colors.grey, fontSize: 18.0),
        suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                _toggleVisibility = !_toggleVisibility;

              });
            },
            icon: _toggleVisibility ? Icon(Icons.visibility_off): Icon(Icons.visibility)),
      ),
      obscureText: _toggleVisibility,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height:50.0),
              Text(
                "Sign In",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0),
              ),
              SizedBox(
                height: 150.0,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
                Text("Forgotten Password ?",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor, fontSize: 20.0)),
              ]),
              SizedBox(
                height: 10.0,
              ),
              Card(
                elevation: 5.0,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: <Widget>[
                      _buildEmailTextField(),
                      SizedBox(
                        height: 20.0,
                      ),
                      _buildPasswordTextField()
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Button(btnText: "Sign In",),
              Divider(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Don't have Account ?"),
                  SizedBox(
                    width: 10.0,
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => SignUpPage() ));
                    },
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
