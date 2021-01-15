import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SliderPage extends StatelessWidget {
  final String image;

  SliderPage({this.image});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            image,
         height: height*0.6,
          ),
          (image == 'assets/page2.png')
              ? Container(
            height: height*0.2,
                  margin: EdgeInsets.only(left: 20, right: 20),
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
                            text: 'để đăng nhập nếu như bạn đã có từ trước',
                            style: TextStyle(fontSize: 13)),
                      ],
                    ),
                  ),
                )
              : Container(
            height: height*0.2,
                  margin: EdgeInsets.only(left: 20, right: 20),
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
        ],
      ),
    );
  }
}
