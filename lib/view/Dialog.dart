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
    return AlertDialog(

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      title: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Chọn trường học',style: TextStyle(fontSize: 16),),
          IconButton(
            icon: Icon(
              Icons.close,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
      content:  Container(
        height: 200,
        width: 200,
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: ListView(
            children: <Widget>[
              InkWell(
                splashColor: Colors.white,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                        return HomePage();
                      }));
                },
                child: Container(
                  margin: EdgeInsets.all(2),
                  height: 50.0,
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
                      children: [
                        Text('THCS Thượng Lâm'),
                        Text('taphuanttq.vnedu.vn',
                            style: TextStyle(fontSize: 10, color: Colors.red)),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                splashColor: Colors.white,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                        return HomePage();
                      }));
                },
                child: Container(
                  margin: EdgeInsets.all(2),
                  height: 50.0,
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
                      children: [
                        Text('THCS Thượng Lâm'),
                        Text('taphuanttq.vnedu.vn',
                            style: TextStyle(fontSize: 10, color: Colors.red)),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                splashColor: Colors.white,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                        return HomePage();
                      }));
                },
                child: Container(
                  margin: EdgeInsets.all(2),
                  height: 50.0,
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
                      children: [
                        Text('THCS Thượng Lâm'),
                        Text('taphuanttq.vnedu.vn',
                            style: TextStyle(fontSize: 10, color: Colors.red)),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),);

    // return AlertDialog(
    //   shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(20.0)), //this right here
    //   title: Container(
    //     height: 200,
    //
    //     // child: Padding(
    //     //   padding: const EdgeInsets.all(12.0),
    //       // child: ListView(
    //       //   children: <Widget>[
    //       //
    //       //     InkWell(
    //       //       splashColor: Colors.white,
    //       //       onTap: () {
    //       //         Navigator.push(context,
    //       //             MaterialPageRoute(builder: (context) {
    //       //               return HomePage();
    //       //             }));
    //       //       },
    //       //       child: Container(
    //       //         margin: EdgeInsets.all(2),
    //       //         height: 50.0,
    //       //         decoration: BoxDecoration(
    //       //           color: Colors.grey[200],
    //       //           borderRadius: BorderRadius.only(
    //       //               topLeft: Radius.circular(8.0),
    //       //               bottomLeft: Radius.circular(8.0),
    //       //               topRight: Radius.circular(8.0),
    //       //               bottomRight: Radius.circular(8.0)),
    //       //         ),
    //       //         child: Padding(
    //       //           padding: const EdgeInsets.all(8.0),
    //       //           child: Column(
    //       //             crossAxisAlignment: CrossAxisAlignment.start,
    //       //             children: [
    //       //               Text('THCS Thượng Lâm'),
    //       //               Text('taphuanttq.vnedu.vn',
    //       //                   style: TextStyle(fontSize: 10, color: Colors.red)),
    //       //             ],
    //       //           ),
    //       //         ),
    //       //       ),
    //       //     ),
    //       //     InkWell(
    //       //       splashColor: Colors.white,
    //       //       onTap: () {
    //       //         Navigator.push(context,
    //       //             MaterialPageRoute(builder: (context) {
    //       //               return HomePage();
    //       //             }));
    //       //       },
    //       //       child: Container(
    //       //         margin: EdgeInsets.all(2),
    //       //         height: 50.0,
    //       //         decoration: BoxDecoration(
    //       //           color: Colors.grey[200],
    //       //           borderRadius: BorderRadius.only(
    //       //               topLeft: Radius.circular(8.0),
    //       //               bottomLeft: Radius.circular(8.0),
    //       //               topRight: Radius.circular(8.0),
    //       //               bottomRight: Radius.circular(8.0)),
    //       //         ),
    //       //         child: Padding(
    //       //           padding: const EdgeInsets.all(8.0),
    //       //           child: Column(
    //       //             crossAxisAlignment: CrossAxisAlignment.start,
    //       //             children: [
    //       //               Text('THCS Thượng Lâm'),
    //       //               Text('taphuanttq.vnedu.vn',
    //       //                   style: TextStyle(fontSize: 10, color: Colors.red)),
    //       //             ],
    //       //           ),
    //       //         ),
    //       //       ),
    //       //     ),
    //       //     InkWell(
    //       //       splashColor: Colors.white,
    //       //         Navigator.push(context,
    //       //             MaterialPageRoute(builder: (context) {
    //       //               return HomePage();
    //       //             }));
    //       //       },
    //       //       child: Container(
    //       //         margin: EdgeInsets.all(2),
    //       //         height: 50.0,
    //       //         decoration: BoxDecoration(
    //       //           color: Colors.grey[200],
    //       //           borderRadius: BorderRadius.only(
    //       //               topLeft: Radius.circular(8.0),
    //       //               bottomLeft: Radius.circular(8.0),
    //       //               topRight: Radius.circular(8.0),
    //       //               bottomRight: Radius.circular(8.0)),
    //       //         ),
    //       //         child: Padding(
    //       //           padding: const EdgeInsets.all(8.0),
    //       //           child: Column(
    //       //             crossAxisAlignment: CrossAxisAlignment.start,
    //       //             children: [
    //       //               Text('THCS Thượng Lâm'),
    //       //               Text('taphuanttq.vnedu.vn',
    //       //                   style: TextStyle(fontSize: 10, color: Colors.red)),
    //       //             ],
    //       //           ),
    //       //         ),
    //       //       ),
    //       //     ),
    //       //   ],
    //       // ),
    //     //),
    //   ),
    // );
  }
}
