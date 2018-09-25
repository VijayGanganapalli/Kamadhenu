import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                _buildLogo(),
                SizedBox(height: 16.0),
                _buildLogoTitle(),
              ],
            ),
            SizedBox(height: 120.0),
            _buildUsernameTextField(),
            SizedBox(height: 12.0),
            _buildPasswordTextField(),
            SizedBox(height: 12.0),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  _buildCancelButton(),
                  _buildNextButton(),
                ],
              ),
            ),
            SizedBox(height: 24.0),
          ],
        ),
      ),
    );
  }

  Widget _buildLogo() {
    return CircleAvatar(
      backgroundColor: Theme.of(context).primaryColor,
      maxRadius: 40.0,
      child: Icon(
        Icons.shopping_cart,
        size: 54.0,
        color: Colors.white,
      ),
    );
  }

  Widget _buildLogoTitle() {
    return Text(
      "KAMADHENU",
      style: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        color: Theme.of(context).primaryColor,
      ),
    );
  }

  Widget _buildUsernameTextField() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        labelText: "Username",
      ),
      controller: _usernameController,
    );
  }

  Widget _buildPasswordTextField() {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        labelText: "Password",
      ),
      obscureText: true,
      controller: _passwordController,
    );
  }

  Widget _buildCancelButton() {
    return FlatButton(
      child: Text(
        "CANCEL",
        style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      onPressed: () {
        _usernameController.clear();
        _passwordController.clear();
      },
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
    );
  }

  Widget _buildNextButton() {
    return RaisedButton(
      color: Theme.of(context).primaryColor,
      elevation: 8.0,
      child: Text(
        "NEXT",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      onPressed: () {
        Navigator.pop(context);
      },
      shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4.0))),
    );
  }
}
