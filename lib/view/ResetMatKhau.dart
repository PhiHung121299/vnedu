import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vnedu/view/Login.dart';

class ResetMatKhau extends StatelessWidget {
  goBack(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        margin: EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Khôi phục mật khẩu ',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Container(
              margin: EdgeInsets.only(top: 15.0),
              child: Text(
                'Vui lòng nhập email của bạn để tiến hành khôi phục mật khẩu:',
                style: TextStyle(fontSize: 13),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Tên đăng nhập hoặc email',
                  prefixIcon: const Icon(Icons.person_outline),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15.0),
              child: Card(
                color: Colors.red[700],
                elevation: 0.0,
                child: SizedBox(
                  height: 40,
                  child: InkWell(
                    splashColor: Colors.white,
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return GuiMail();
                      }));
                      print("Reset mật khẩu");
                    },
                    child: Row(
                      children: const <Widget>[
                        Expanded(
                            child: Text(
                          'Gửi email',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GuiMail extends StatelessWidget {
  goBack(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
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
        margin: EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 0),
              child: Image.asset(
                'assets/mail.png',
                width: 100,
                height: 100,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Text(
                'Kiểm tra hòm thư',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Text(
                'Vui lòng nhập email của bạn để tiến hành khôi phục mật khẩu:',
                style: TextStyle(fontSize: 13),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              // decoration: BoxDecoration(
              //     border: Border.all(style: BorderStyle.solid, width: 2,color: Colors.red[800])),
              margin: EdgeInsets.only(top: 30.0),
              child: Card(
                color: Colors.red[800],
                elevation: 0.0,
                child: SizedBox(
                  height: 40,
                  child: InkWell(
                    splashColor: Colors.white,
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return CapNhatMatKhau();
                      }));
                      print("Gửi lại mail");
                    },
                    child: Row(
                      children: const <Widget>[
                        Expanded(
                            child: Text(
                          'Gửi email',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ))
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: new InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ResetMatKhau();
                  }));
                  print("Reset mật khẩu");
                },
                child: Text(
                  'Thử lại sau',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CapNhatMatKhau extends StatelessWidget {
  bool _showPassword = false;

  goBack(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        margin: EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Cập nhập mật khẩu',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Container(
              margin: EdgeInsets.only(top: 15.0),
              child: Text(
                'Mật khẩu mới của bạn cần khác so với mật khẩu cũ',
                style: TextStyle(fontSize: 13),
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
            Container(
              margin: EdgeInsets.only(top: 15.0),
              child: Card(
                color: Colors.red[700],
                elevation: 0.0,
                child: SizedBox(
                  height: 40,
                  child: InkWell(
                    splashColor: Colors.white,
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ThanhCong();
                      }));
                    },
                    child: Row(
                      children: const <Widget>[
                        Expanded(
                            child: Text(
                          'Cập nhật',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ThanhCong extends StatelessWidget {
  goBack(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
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
        margin: EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Container(
            //   width: 100.0,
            //   height: 100.0,
            //   color: Colors.pink,
            // ),
            Container(
              margin: EdgeInsets.only(top: 0),
              child: Image.asset(
                'assets/mail.png',
                width: 100,
                height: 100,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Text(
                'Cập nhật thành công',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Container(
              // decoration: BoxDecoration(
              //     border: Border.all(style: BorderStyle.solid, width: 2,color: Colors.red[800])),
              margin: EdgeInsets.only(top: 30.0),
              child: Card(
                color: Colors.red[800],
                elevation: 0.0,
                child: SizedBox(
                  height: 40,
                  child: InkWell(
                    splashColor: Colors.white,
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Login();
                      }));
                      print("quay lại đăng nhập");
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
            ),
          ],
        ),
      ),
    );
  }
}
