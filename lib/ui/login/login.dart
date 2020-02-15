import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String _email;
  String _password;

  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  bool _enableBtn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomPadding: true, body: _body());
  }

  _body() {
    final emailField = Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Text(
          'הקלידו את שם בי”הס ובחרו מהרשימה',
          textDirection: TextDirection.rtl,
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        SizedBox(height: 10),
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.end,
          style: style,
          validator: (value) => value.length < 3 ? 'error' : null,
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.email),
              contentPadding: const EdgeInsets.only(left: 10.0, right: 10.0),
              hintText: "תיכון מקיף יהוד",
              filled: true,
              fillColor: Colors.white),
        ),
      ],
    );

    final passwordField = Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Text(
          'עתה הכניסו את קוד בי”הס',
          textDirection: TextDirection.rtl,
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        SizedBox(height: 10),
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          obscureText: true,
          textDirection: TextDirection.rtl,
          style: style,
          validator: (value) => value.length < 3 ? 'error' : null,
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.lock),
              contentPadding: const EdgeInsets.only(left: 10.0, right: 10.0),
              filled: true,
              fillColor: Colors.white),
        ),
      ],
    );

    final submitBtn = Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: ButtonTheme(
        minWidth: MediaQuery.of(context).size.width,
        child: RaisedButton(
            onPressed: _enableBtn ? () => Navigator.pushNamed(context, '/home') : null,
            padding: EdgeInsets.all(12),
            color: Colors.red,
            child: Text('כניסה',
                style: TextStyle(fontSize: 30, color: Colors.white))),
      ),
    );

    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.fromLTRB(35, 40, 35, 5),
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/login_bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(children: <Widget>[
          Image(
            width: double.infinity,
            image: AssetImage("assets/images/logo.png"),
            fit: BoxFit.cover,
          ),
          Text(
            'ברוחים הבאים\n לעיתון שלכם במובייל',
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          Expanded(child: Container()),
          Form(
            key: _formKey,
            onChanged: () {
              if (_formKey.currentState.validate()) {
                print("$_email $_password");
                setState(() {
                  _enableBtn = true;
                });
              } else {
                setState(() {
                  _enableBtn = false;
                });
              }
            } ,
            child: Column(
              children: <Widget>[
                emailField,
                SizedBox(height: 20),
                passwordField,
                SizedBox(height: 20),
                submitBtn
              ],
            ),
          ),
          SizedBox(height: 30),
          Text(
            'Powered by app wize',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          SizedBox(height: 10)
        ]),
      ),
    );
  }
}
