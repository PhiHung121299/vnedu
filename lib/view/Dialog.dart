import 'package:custom_dialog/custom_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vnedu/view/HomePage.dart';

import 'Login.dart';

class DialogChonTruong extends StatefulWidget {
  @override
  _DialogChonTruongState createState() => _DialogChonTruongState();
}

class _DialogChonTruongState extends State<DialogChonTruong> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      content:  Container(
        height: height*0.4,
        width: width*0.9,
        child: Column(
          children: [
            Container(
              height: height*0.09,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Chọn trường học',style: TextStyle(fontSize: 18 ,fontWeight: FontWeight.bold),),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).pop();
                    },
                    child: IconButton(
                      icon: Icon(
                        Icons.close,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(

              height: height*(0.4-0.09),
              width: width,
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: ListView(
                  children: <Widget>[
                    ItemTruong(height: height,TenTruong: 'THCS Nguyễn Trãi',linkWed: 'taphuanttq.vnedu.vn',),
                    ItemTruong(height: height,TenTruong: 'THCS Nguyễn Trãi',linkWed: 'taphuanttq.vnedu.vn',),
                    ItemTruong(height: height,TenTruong: 'THCS Nguyễn Trãi',linkWed: 'taphuanttq.vnedu.vn',),
                    ItemTruong(height: height,TenTruong: 'THCS Nguyễn Trãi',linkWed: 'taphuanttq.vnedu.vn',),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),);
  }
}

class ItemTruong extends StatelessWidget {
  const ItemTruong({
    Key key,
    @required this.height,
    @required this.TenTruong,
    @required this.linkWed,
  }) : super(key: key);

  final double height;
  final String TenTruong, linkWed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.white,
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) {
              return HomePage();
            }));
      },
      child: Container(
        margin: EdgeInsets.all(2),
        height: 65,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8.0),
              bottomLeft: Radius.circular(8.0),
              topRight: Radius.circular(8.0),
              bottomRight: Radius.circular(8.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(TenTruong, style: TextStyle(fontSize: 18, color: Colors.black)),
              SizedBox(height: 5,),
              Text(linkWed,
                  style: TextStyle(fontSize: 14, color: Colors.red)),
            ],
          ),
        ),
      ),
    );
  }
}
