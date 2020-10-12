import 'dart:ui';

import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
  static const String id = 'aboutus_screen';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'About Us',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
              letterSpacing: 1,
            ),
          ),
        ),
      ),
      body: new SafeArea(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            new Container(
              width: size.width,
              height: size.height/1.2,
              //color: Colors.grey,
              child: new Stack(
                alignment: Alignment.center,
                children: [
                  //Info
                  new Positioned(
                    top: 190,
                    //bottom: 10,
                    child: Container(
                      width: size.width/1.2,
                      height: size.height/2.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.black,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Ryan Nugraha',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 26.0,
                              letterSpacing: 1.2,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            '32180118',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 23.0,
                              letterSpacing: 1.2,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            '5PTI1',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 23.0,
                              letterSpacing: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //Photo
                  new Positioned(
                    top: 90,
                    child: new CircleAvatar(
                      radius: 80,
                      backgroundImage: new AssetImage('assets/images/ryan.jpg'),
                    ),
                  ),
                ],
              ),
            ),
            new Container(
              width: size.width,
              height: size.height/1.2,
              //color: Colors.grey,
              child: new Stack(
                alignment: Alignment.center,
                children: [
                  //Info
                  new Positioned(
                    top: 190,
                    //bottom: 10,
                    child: Container(
                      width: size.width/1.2,
                      height: size.height/2.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.black,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Ridwan Adisaputra',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 26.0,
                              letterSpacing: 1.2,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            '32180061',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 23.0,
                              letterSpacing: 1.2,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            '5PTI1',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 23.0,
                              letterSpacing: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //Photo
                  new Positioned(
                    top: 90,
                    child: new CircleAvatar(
                      radius: 80,
                      backgroundImage: new AssetImage('assets/images/ridwan.jpg'),
                    ),
                  ),
                ],
              ),
            ),
            new Container(
              width: size.width,
              height: size.height/1.2,
              //color: Colors.grey,
              child: new Stack(
                alignment: Alignment.center,
                children: [
                  //Info
                  new Positioned(
                    top: 190,
                    //bottom: 10,
                    child: Container(
                      width: size.width/1.2,
                      height: size.height/2.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.black,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Amalia Tri',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 26.0,
                              letterSpacing: 1.2,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            '32180140',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 23.0,
                              letterSpacing: 1.2,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            '5PTI1',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 23.0,
                              letterSpacing: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //Photo
                  new Positioned(
                    top: 90,
                    child: new CircleAvatar(
                      radius: 80,
                      backgroundImage: new AssetImage('assets/images/amalia.jpg'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
