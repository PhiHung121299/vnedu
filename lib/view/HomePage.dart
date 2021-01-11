import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 8),
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 16, right: 16, top: 16),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: [
                      Text(
                        'Xin chào,',
                        style: TextStyle(fontSize: 10),
                      ),
                      Text(
                        'Phi Hung',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Container(
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.notifications_none,
                            color: Colors.black,
                          ),
                          onPressed: () {},
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: AssetImage('assets/user.jpg'))),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
                height:80.0,
                width: double.infinity,
                child: Image.asset('assets/homepage.png')),
            Container(

                // height: 199,
                // child: ListView.builder(
                //   scrollDirection: Axis.horizontal,
                //   padding: EdgeInsets.only(left: 16,right: 16),
                //   itemCount: image: AssetImage('assets/user.jpg'),
                //   itemBuilder: (context, index) {
                //     return Container();
                //   },
                // ),
                ),
          ],
        ),
      ),
    );
  }
}
