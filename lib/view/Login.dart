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
  bool _isHidden = true;

  void _toggleVisibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    goBack(BuildContext context) {
      Navigator.pop(context);
    }

    void showAlerDialog(BuildContext context) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
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
      body: Container(
        child: Column(
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
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: Text(
                    'hoặc sử dụng tài khoản được cấp',
                    style: TextStyle(
                      fontSize: 13,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Column(
                children: [
                  buildTextField("Email"),
                  SizedBox(
                    height: 20.0,
                  ),
                  buildTextField("Mật khẩu"),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              height: 40,
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color(0xFFBB2634),
              ),
              child: InkWell(
                splashColor: Colors.white,
                onTap: () {
                  showDialog(
                    context: context,
                    child: DialogChonTruong(),
                    barrierDismissible: false,
                  );
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
                      style: TextStyle(fontSize: 13, color: Colors.red),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(String hintText) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 16.0,
        ),
        prefixIcon: hintText == "Email"
            ? Icon(Icons.person_outline)
            : Icon(Icons.lock_outline),
        suffixIcon: hintText == "Mật khẩu"
            ? IconButton(
                onPressed: _toggleVisibility,
                icon: _isHidden
                    ? Icon(Icons.visibility_off)
                    : Icon(Icons.visibility),
              )
            : null,
      ),
      obscureText: hintText == "Mật khẩu" ? _isHidden : false,
    );
  }
}
