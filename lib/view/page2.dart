import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vnedu/view/Login.dart';

class Loginpage2 extends StatelessWidget {
  const Loginpage2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Image.asset(
              'assets/page3.png',
              height: height*0.7,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.only( left: 20, right: 20),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: "Hoặc liên hệ với giáo viên phụ trách để được cấp ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'tài khoản ',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 13,
                    ),
                  ),
                  TextSpan(
                    text: 'và  ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                    ),
                  ),
                  TextSpan(
                    text: 'mật khẩu',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20.0, top: 20.0,bottom: height*0.07),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  // decoration: BoxDecoration(
                  //     border: Border.all(style: BorderStyle.solid, width: 2,color: Colors.red[800])),
                  margin: EdgeInsets.only(top: 30.0),
                  child: Container(
                    height: 40,
                    width: width * 0.3,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color(0xFFBB2634),
                    ),
                    child: InkWell(
                      splashColor: Colors.white,
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                              return Login();
                            }));
                        print("Tiếp theo");
                      },
                      child: Row(
                        children: const <Widget>[
                          Expanded(
                              child: Text(
                                'Đăng nhập',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white),
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
                // RaisedButton(
                //   child: Text('Tiếp theo'),
                //   color: Colors.red[700],
                //   shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.all(Radius.circular(6.0))),
                //   onPressed: () {
                //     Navigator.push(context,
                //         MaterialPageRoute(builder: (context) {
                //       return Login();
                //     }));
                //   },
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
