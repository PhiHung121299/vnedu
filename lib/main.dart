import 'package:flutter/material.dart';
import 'package:vnedu/view/Instruction.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFFBB2634),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),

    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 60.0),
            child: Image.asset(
              'assets/home.png',
              width: 250,
              height: 250,
            ),
          ),
          Container(

            child: Text(
              'XIN CHÀO !',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 40.0,right: 40.0),
            child: Text(
              'Giúp bạn phát triển sự nghiệp và hoàn thiện kiến thức của bản thân với hàng ngàn khóa học Online.Học mọi lúc, mọi nơi',
              textAlign: TextAlign.center,style: TextStyle(fontSize: 13,),
            ),
          ),
          Card(
            color: Colors.red[700],
            margin: const EdgeInsets.all(20.0),
            elevation: 0.0,
            child: SizedBox(
              height: 40,
              child: InkWell(
                splashColor: Colors.white,
                onTap: () {

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                          return OnBoading();
                        }));
                    print("Reset mật khẩu");

                },
                child: Row(
                  children: const <Widget>[
                    Expanded(
                        child: Text(
                      'Bắt đầu',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ))
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 60, right: 60),
            child: Text(
              'Liên hệ giáo viên phụ trách để được cấp tài khoản đăng nhập',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }


}
