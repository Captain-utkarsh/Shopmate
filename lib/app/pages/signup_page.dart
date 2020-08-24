import 'package:flutter/material.dart';
import 'package:shopmate/app/pages/signin_page.dart';
import 'package:shopmate/app/widgets/button.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _toggleVisibility = true;
  bool _toggleConfirmVisibility = true;


  Widget _buildEmailTextField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Email",
        hintStyle: TextStyle(color: Colors.grey, fontSize: 18.0),
      ),
    );
  }

  Widget _buildUserTextField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Username ",
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

  Widget _buildConfirmPasswordTextField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Confirm Password",
        hintStyle: TextStyle(color: Colors.grey, fontSize: 18.0),
        suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                _toggleConfirmVisibility = !_toggleConfirmVisibility;

              });
            },
            icon: _toggleConfirmVisibility ? Icon(Icons.visibility_off): Icon(Icons.visibility)),
      ),
      obscureText: _toggleConfirmVisibility,
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
                "Sign Up",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0),
              ),
              SizedBox(
                height: 100.0,
              ),
//              Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
//                Text("Forgotten Password ?",
//                    style: TextStyle(
//                        color: Theme.of(context).primaryColor, fontSize: 20.0)),
//              ]),
              SizedBox(
                height: 10.0,
              ),
              Card(
                elevation: 5.0,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: <Widget>[
                      _buildUserTextField(),
                      SizedBox(
                        height: 20.0,
                      ),
                      _buildEmailTextField(),
                      SizedBox(
                        height: 20.0,
                      ),
                      _buildPasswordTextField(),
                      SizedBox(
                        height: 20.0,
                      ),
                      _buildConfirmPasswordTextField(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Button(btnText: "Sign Up",),
              Divider(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Already have an Account ?"),
                  SizedBox(
                    width: 10.0,
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => SignInPage() ));
                    },
                    child: Text(
                      "Sign In",
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
