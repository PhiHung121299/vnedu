import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vnedu/view/Login.dart';

class Loginpage2 extends StatelessWidget {
  const Loginpage2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Image.asset(
              'assets/page3.png',
              height: 400,
              width: 300,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15, left: 20, right: 20),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: "Hoặc liên hệ với giáo viên phụ trách để được cấp ",
                style: TextStyle(
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'tài khoản ',
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                  TextSpan(
                    text: 'và  ',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: 'mật khẩu',
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20.0, top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RaisedButton(
                  child: Text('Tiếp theo'),
                  color: Colors.red[700],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6.0))),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Login();
                    }));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
