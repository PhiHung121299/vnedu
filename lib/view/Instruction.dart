import 'package:flutter/material.dart';
import 'package:vnedu/view/slider.dart';

import 'Login.dart';

class OnBoading extends StatefulWidget {
  @override
  _OnBoadingState createState() => _OnBoadingState();
}

class _OnBoadingState extends State<OnBoading> {
  int _currentPage = 0;
  PageController _controller = PageController();
  List<Widget> _pages = [
    SliderPage(image: "assets/page2.png"),
    SliderPage(image: "assets/page3.png"),
  ];

  _onchanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
            scrollDirection: Axis.horizontal,
            onPageChanged: _onchanged,
            controller: _controller,
            itemCount: _pages.length,
            itemBuilder: (context, int index) {
              return _pages[index];
            },
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    InkWell(
                      onTap: () {
                        _controller.nextPage(
                            duration: Duration(milliseconds: 800),
                            curve: Curves.easeInOutQuint);
                      },
                      child: AnimatedContainer(
                          alignment: Alignment.center,
                          duration: Duration(milliseconds: 300),
                          height: 44,
                          width:
                              (_currentPage == (_pages.length - 1)) ? 120 : 120,
                          decoration: BoxDecoration(
                              color: Color(0xFFBB2634),
                              borderRadius: BorderRadius.circular(10)),
                          child: (_currentPage == (_pages.length - 1))
                              ? GestureDetector(
                                  onTap: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return Login();
                                    }));
                                    print('chuyển đến đăngg nhập');
                                  },
                                  child: Text("Đăng nhập",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      )),
                                )
                              : Text(
                                  "Tiếp theo",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                )),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                            List<Widget>.generate(_pages.length, (int index) {
                          return AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              height: 10,
                              width: (index == _currentPage) ? 30 : 10,
                              margin: EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 30),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: (index == _currentPage)
                                      ? Colors.grey
                                      : Colors.grey.withOpacity(0.5)));
                        })),
                  ],
                ),
                SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
