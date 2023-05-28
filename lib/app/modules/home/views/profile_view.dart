import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ProfileView extends GetView {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff47070b),
      appBar: AppBar(
        toolbarHeight: 70,
        //backgroundColor: const Color(0xff47070b),
        title: const Text(
          'Profile',
          style: TextStyle(fontSize: 25, color: Colors.black87),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: Container(

              margin:
              EdgeInsets.only(left: 25, right: 25, top: 105, bottom: 25),
              decoration: const BoxDecoration(
                  //color: const Color(0xff47070b),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/29logo.jpg'),
                radius: 50,
              ),
            ),
          ),
          Container(
              height: 75,
              margin: EdgeInsets.only(right: 45, left: 45),
              decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(7.0))),
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Icon(
                    Icons.person_outline_outlined,
                    size: 35,
                    color: Colors.orange,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "My Account",
                        style: TextStyle(fontSize: 16, color: Colors.black54),
                      )),

                ],
              )),
          SizedBox(
            height: 35,
          ),
          Container(
              height: 75,
              margin: EdgeInsets.only(right: 45, left: 45),
              decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(7.0))),
              child: Row(

                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Icon(
                    Icons.notification_important,
                    size: 35,
                    color: Colors.orange,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Notifications",
                        style: TextStyle(fontSize: 16, color: Colors.black54),
                      )),

                ],
              )),
          SizedBox(
            height: 35,
          ),
          Container(
              height: 75,
              margin: EdgeInsets.only(right: 45, left: 45),
              decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(7.0))),
              child: Row(

                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Icon(
                    Icons.settings,
                    size: 35,
                    color: Colors.orange,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Settings",
                        style: TextStyle(fontSize: 16, color: Colors.black54),
                      )),

                ],
              )),
          SizedBox(
            height: 35,
          ),
          Container(
              height: 75,
              margin: EdgeInsets.only(right: 45, left: 45),
              decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(7.0))),
              child: Row(

                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Icon(
                    Icons.help_outline_rounded,
                    size: 35,
                    color: Colors.orange,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  TextButton(
                      onPressed: () {
                        // Get.to(CartPage());
                        //Navigator.pushNamed(context, 'cartPage');
                      },
                      child: Text(
                        "Help Centre",
                        style: TextStyle(fontSize: 16, color: Colors.black54),
                      )),

                ],
              )),
          SizedBox(
            height: 35,
          ),
          Container(
              height: 75,
              margin: EdgeInsets.only(right: 45, left: 45),
              decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(7.0))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Icon(
                    Icons.logout,
                    size: 35,
                    color: Colors.orange,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  TextButton(
                      onPressed: () {
                       // Get.to(CartPage());
                        //Navigator.pushNamed(context, 'cartPage');
                      },
                      child: Text(
                        "Log Out",
                        style: TextStyle(fontSize: 16, color: Colors.black54),
                      )),
                  SizedBox(
                    width: 125,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 25,
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
