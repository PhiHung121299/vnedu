import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:vnedu/view/page2.dart';

class Loginpage1 extends StatelessWidget {

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
              'assets/page2.png',
            height: height*0.7,
            fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.only( left: 20, right: 20),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: "Sử dụng tài khoản ",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'vnEdu Connect ',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.blue,
                    ),
                  ),
                  TextSpan(
                    text: 'để đăng nhập nếu như bạn đã có từ trước',style: TextStyle(fontSize: 13)
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
                              return Loginpage2();
                            }));
                        print("Tiếp theo");
                      },
                      child: Row(
                        children: const <Widget>[
                          Expanded(
                              child: Text(
                                'Tiếp theo',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white),
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
