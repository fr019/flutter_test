import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Align(
          alignment: Alignment.center,
          child: Text('עירוני אי אשקלון', textAlign: TextAlign.center),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Image(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 2.5,
                image: AssetImage("assets/images/header.jpg"),
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: -50,
                left: (MediaQuery.of(context).size.width / 2) - 60,
                child: Image(
                  width: 120,
                  image: AssetImage("assets/images/pic.jpg"),
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(35, 45, 35, 15),
            child: Column(
              children: <Widget>[
                Text(
                    'טקסט אישי שיוזן במערכת יופיע כאן צש בליא, מנסוטו צמלח לביקו ננבי, צמוקו בלוקריה שיצמה קלאצי קולורס מונפרד אדנדום סילקוף, מרנשי',
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22)),
                SizedBox(height: 20),
                ButtonTheme(
                  minWidth: MediaQuery.of(context).size.width,
                  child: RaisedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      padding: EdgeInsets.all(5),
                      color: Color(0xffc76b9c),
                      child: Text('כניסה',
                          style: TextStyle(fontSize: 30, color: Colors.white))),
                ),
              ],
            ),
          ),
          Image(
            width: MediaQuery.of(context).size.width / 2.5,
            image: AssetImage("assets/images/logo.png"),
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10),
          Text(
            'Powered by app wize',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 10)
        ],
      ),
    );
  }
}
