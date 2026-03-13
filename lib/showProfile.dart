import 'package:flutter/material.dart';
import 'package:gd1_a_2401/isiShowProfile.dart';
import 'package:gd1_a_2401/utilities/constant.dart';

class ShowProfile extends StatelessWidget {
  const ShowProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kColor,
        appBar: AppBar(title: Text('Profile')),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 50),
                child: Row(
                  children: [
                    kSizeBox2,
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('images/download.png'),
                    ),
                    kSizeBox2,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(username, style: kTextStyle4),
                        Text('FLUTTER DEVELOPER', style: kTextStyle5),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(children: [Text('3', style: kTextStyle3), Text('Posts', style: kTextStyle3)]),
                    Column(children: [Text('9999', style: kTextStyle3), Text('Followers', style: kTextStyle3)]),
                    Column(children: [Text('1', style: kTextStyle3), Text('Following', style: kTextStyle3)]),
                  ],
                ),
              ),
              kSizeBox,
              IsiShowProfile(), 
              kSizeBox,
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.pop(context),
          backgroundColor: Colors.teal,
          child: Icon(Icons.arrow_back),
        ),
      ),
    );
  }
}
