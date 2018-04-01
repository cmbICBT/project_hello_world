import "package:flutter/material.dart";

void main() => runApp(new MyApp());

final ThemeData kIOSTheme = new ThemeData(
  primarySwatch: Colors.blue,
  primaryColor: Colors.grey[100],
  primaryColorBrightness: Brightness.light,
);

final ThemeData kDefaultTheme = new ThemeData(
  primarySwatch: Colors.blue,
  accentColor: Colors.blueAccent[400],
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "CRM App",
      theme: Theme.of(context).platform == TargetPlatform.iOS
          ? kIOSTheme
          : kDefaultTheme,
      home: new LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  State createState() => new LoginPageState();
}

class LoginPageState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final _userName = new TextFormField(
      autofocus: false,
      keyboardType: TextInputType.emailAddress,
      style: new TextStyle(
        color: Colors.black,
      ),
      decoration: new InputDecoration(
          contentPadding: new EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
          border: new OutlineInputBorder(
              borderRadius: new BorderRadius.circular(5.0),
              borderSide: new BorderSide(
                  color: Colors.blue, style: BorderStyle.solid, width: 1.0)),
          hintText: "Enter your username here",
          hintStyle: new TextStyle(
            color: Colors.grey,
            fontFamily: 'Montserrat',
            fontSize: 15.0,
            fontStyle: FontStyle.normal,
          )),
    );

    final _password = new TextFormField(
      autofocus: false,
      keyboardType: TextInputType.text,
      obscureText: true,
      style: new TextStyle(
        color: Colors.black,
      ),
      decoration: new InputDecoration(
          contentPadding: new EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
          border: new OutlineInputBorder(
              borderRadius: new BorderRadius.circular(5.0),
              borderSide: new BorderSide(
                  color: Colors.blue, style: BorderStyle.solid, width: 1.0)),
          hintText: "Enter your password here",
          hintStyle: new TextStyle(
            color: Colors.grey,
            fontFamily: 'Montserrat',
            fontSize: 15.0,
            fontStyle: FontStyle.normal,
          )),
    );

    final _loginButton = new Center(
      child: new Material(
        elevation: 4.0,
        child: new MaterialButton(
          minWidth: 180.0,
          colorBrightness: Brightness.dark,
          height: 40.0,
          highlightElevation: 10.0,
          highlightColor: Colors.white30,
          elevation: 4.0,
          color: Colors.lightBlue,
          textColor: Colors.white,
          padding: new EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 2.0),
          child: new Text("Log In", style: new TextStyle(color: Colors.white, fontFamily: 'Montserrat', fontStyle: FontStyle.normal, fontSize: 20.0), textAlign: TextAlign.center),
          onPressed: (){

          },
        ),
      ),
    );

    final _signUpButton = new Center(
      child: new Material(
        elevation: 4.0,
        borderRadius: new BorderRadius.circular(20.0),
        child: new MaterialButton(
          minWidth: 180.0,
          height: 40.0,
          highlightColor: Colors.lightBlue.shade100,
          highlightElevation: 10.0,
          colorBrightness: Brightness.light,
          padding: new EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 2.0),
          elevation: 4.0,
          textColor: Colors.lightBlue,
          color: Colors.white,
          child: new Text("Sign Up", style: new TextStyle(color: Colors.lightBlue, fontFamily: 'Montserrat', fontStyle: FontStyle.normal, fontSize: 20.0, decoration: TextDecoration.underline), textAlign: TextAlign.center),
          onPressed: (){

          },
        ),
      ),
    );
    return new Scaffold(
        body: new Container(
            padding: const EdgeInsets.all(15.0),
            child: new Center(
                child: new Container(
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    verticalDirection: VerticalDirection.down,
              children: <Widget>[_userName, new SizedBox(height: 10.0), _password, new SizedBox(height: 10.0), 
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[_loginButton, new SizedBox(width: 10.0), _signUpButton,],
              )
              ],
            )))));
  }
}
