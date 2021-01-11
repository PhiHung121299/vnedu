import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:vnedu/view/page2.dart';

class Loginpage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // ConstrainedBox(
          //     child: new Swiper(
          //       outer:false,
          //       itemBuilder: (c, i) {
          //         return new Wrap(
          //           runSpacing:  6.0,
          //           children: [0,1].map((i){
          //             return new SizedBox(
          //               width: MediaQuery.of(context).size.width/5,
          //               child: new Column(
          //                 mainAxisSize: MainAxisSize.min,
          //                 children: <Widget>[
          //                   new SizedBox(
          //                     child:  new Container(
          //                       child: new Image.asset(
          //                         'assets/page2.png'),
          //                     ),
          //                     height: MediaQuery.of(context).size.width * 0.12,
          //                     width: MediaQuery.of(context).size.width * 0.12,
          //                   ),
          //                   new Padding(padding: new EdgeInsets.only(top:6.0),child: new Text("$i"),)
          //                 ],
          //               ),
          //             );
          //           }).toList(),
          //         );
          //       },
          //       pagination: new SwiperPagination(
          //           margin: new EdgeInsets.all(5.0)
          //       ),
          //       itemCount: 2,
          //     ),
          //     constraints:new BoxConstraints.loose(new Size(screenSize.width, 170.0))
          // ),
          Container(
            alignment: Alignment.center,
            child: Image.asset(
              'assets/page2.png',
              height: 400,
              width: 300,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15, left: 20, right: 20),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: "Sử dụng tài khoản ",
                style: TextStyle(
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'vnEdu Connect ',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  TextSpan(
                    text: 'để đăng nhập nếu như bạn đã có từ trước',
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
                      return Loginpage2();
                    }));
                    print("page2");
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
