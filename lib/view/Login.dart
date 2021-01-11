import 'package:custom_dialog/custom_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:vnedu/view/Dialog.dart';

import 'ResetMatKhau.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    goBack(BuildContext context) {
      Navigator.pop(context);
    }

    void showAlerDialog(BuildContext context) {
      showDialog(context: context, builder: (BuildContext context) {

        return CustomDialog();
      });
    }

    void chuyen() {
      Navigator.pushNamed(context, '/Reset');
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Đăng nhập",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            goBack(context);
          },
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Image.asset(
              'assets/homemain.png',
              width: 150,
              height: 150,
            ),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: Image.asset(
                  'assets/homebt.png',
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Text(
                  'hoặc sử dụng tài khoản được cấp',
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Tên đăng nhập',
                    prefixIcon: const Icon(Icons.person_outline),
                  ),
                ),
                TextField(
                  obscureText: !this._showPassword,
                  decoration: InputDecoration(
                    labelText: 'Mật khẩu',
                    prefixIcon: const Icon(Icons.https_outlined),
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.remove_red_eye,
                        color: this._showPassword ? Colors.blue : Colors.grey,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
          Card(
            color: Colors.red[700],
            margin: const EdgeInsets.only(left: 20.0, right: 20.0),
            elevation: 0.0,
            child: SizedBox(
              height: 40,
              child: InkWell(
                splashColor: Colors.white,
                 onTap: () {
                   showDialog(
                     context: context,
                     child: DialogChonTruong(),
                     barrierDismissible: false,
                   );
                //   showDialog(
                //       context: context,
                //       builder: (BuildContext context) {
                //         return Dialog(
                //           shape: RoundedRectangleBorder(
                //               borderRadius: BorderRadius.circular(
                //                   20.0)), //this right here
                //           child: Container(
                //             height: 200,
                //             child: Padding(
                //               padding: const EdgeInsets.all(12.0),
                //               child: Column(
                //                 mainAxisAlignment: MainAxisAlignment.center,
                //                 crossAxisAlignment: CrossAxisAlignment.start,
                //                 children: [
                //                   SizedBox(
                //                     width: 320.0,
                //                     child: RaisedButton(
                //                       onPressed: () {},
                //                       child: Text(
                //                         "Save",
                //                         style: TextStyle(color: Colors.white),
                //                       ),
                //                       color: const Color(0xFF1BC0C5),
                //                     ),
                //                   )
                //                 ],
                //               ),
                //             ),
                //           ),
                //         );
                //       });
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
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.only(right: 40.0),
                child: new InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ResetMatKhau();
                    }));
                    print("Reset mật khẩu");
                  },
                  child: Text(
                    'Quên mật khẩu tài khoản được cấp?',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12, color: Colors.red),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
