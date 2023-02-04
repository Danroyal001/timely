import 'package:flutter/material.dart';
import 'package:timely/Components/bottom_nav.dart';
import '../Components/bottom navigation.dart';
import '../Components/popup_menu _buttons.dart';
import '../Constants/menu_padding.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigation(),

      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
        title: Text(
          'About',
        ),
        actions: [
          Row(
            children: [
              MenuButton(
                mypopupcolor: Colors.white,
              ),
              Container(
                width: menuPadding,
              ),
              Container(
                width: menuPadding,
              )
            ],
          )
        ],
        elevation: 0,
      ),
      // bottomNavigationBar: BottomNav(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
                bottom: 0,
              ),
              child: Text(
                'This app is developed solely for Students to help them managed their School Activities',
                style: TextStyle(
                    color: Color(0xFF808080),
                    fontFamily: 'Satoshi',
                    fontSize: 16),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 16, top: 16),
              child: Text(
                'Developer info',
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    fontFamily: 'Satoshi'),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 16, top: 16),
              child: Text(
                'Thessy Emmanuel',
                style: TextStyle(
                    color: Color(0xFF808080),
                    fontSize: 16,
                    fontFamily: 'Satoshi'),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 16, top: 16),
              child: Text(
                'thessyzilla@gmail.com',
                style: TextStyle(
                    color: Color(0xFF808080),
                    fontSize: 16,
                    fontFamily: 'Satoshi'),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: 16,
                left: 20,
                bottom: 10,
              ),
              child: Text(
                'Social Mediums',
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    fontFamily: 'Satoshi'),
              ),
            ),
            Container(
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Container(
                  padding: EdgeInsets.only(
                    top: 20,
                    left: 20,
                    bottom: 16,
                  ),
                  child: Image.asset(
                    'svgs/fb.png',
                    height: 20,
                    width: 20,
                  ),
                ),
                Text(
                  'Thessy Emmanuel',
                  style: TextStyle(
                      fontFamily: 'Satoshi',
                      fontSize: 16,
                      color: Color((0xFF808080))),
                ),
              ]),
            ),
            Container(
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Container(
                  padding: EdgeInsets.only(
                    left: 20,
                  ),
                  child: Image.asset(
                    'svgs/twit.png',
                    height: 20,
                    width: 20,
                  ),
                ),
                Text(
                  'ThessB',
                  style: TextStyle(
                      fontFamily: 'Satoshi',
                      fontSize: 16,
                      color: Color((0xFF808080))),
                ),
              ]),
            ),
            Container(
              padding: EdgeInsets.only(
                top: 16,
                left: 20,
                bottom: 10,
              ),
              child: Text(
                'Privacy Policy',
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    fontFamily: 'Satoshi'),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 16, top: 4),
              child: Text(
                'agatevure.com/privacy-policy',
                style: TextStyle(
                    color: Color(0xFF808080),
                    fontSize: 16,
                    fontFamily: 'Satoshi'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 10,
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'svgs/Rate.png',
                          height: 20,
                          width: 20,
                        ),
                        Text(
                          'Rate',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 16,
                            fontFamily: 'Satoshi',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 10,
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'svgs/Share.png',
                          height: 20,
                          width: 20,
                        ),
                        Text(
                          'Share',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 16,
                            fontFamily: 'Satoshi',
                          ),
                        )
                      ],
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
