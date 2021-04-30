import 'package:flutter/material.dart';
import 'package:resize/resize.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Initialize ResizeUtil using Resize()
    return Resize(
      allowtextScaling: true,
      builder: () {
        // print(ResizeUtil().deviceType);
        // print(ResizeUtil().orientation);
        // print(ResizeUtil().screenHeight);
        // print(ResizeUtil().screenWidth);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SafeArea(
            child: Scaffold(
              body: ListView(
                children: [
                  SizedBox(
                    height: 20.h, // Using Responsive height
                  ),
                  Text(
                    "This is a Example app for resize package",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 1.15.rem, // Using rem for font size
                    ),
                  ),
                  SizedBox(
                    height: 20.h, // Using Responsive height
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        "https://images.pexels.com/photos/879109/pexels-photo-879109.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                        width: 90.vw,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.h, // Using Responsive height
                  ),
                  Text(
                    "This is a text having fontSize in sp and scaling is set to true by default",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15.sp,
                    ),
                  ),
                  SizedBox(
                    height: 30.h, // Using Responsive height
                  ),
                  Row(
                    children: [
                      Container(
                        width: 40.vw,
                        height: 20.vh,
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: 20.vw, // Using Responsive height
                      ),
                      Container(
                        width: 40.vw,
                        height: 20.vh,
                        color: Colors.green,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Center(
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xFFFF5555),
                        primary: Colors.white,
                        elevation: 5.h,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                      ),
                      child: Text(
                        "This is a button",
                        style: TextStyle(fontSize: 13.sp),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
