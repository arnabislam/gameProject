import 'package:flutter/material.dart';
import 'package:game/app/modules/home/views/andarbahar_view.dart';
import 'package:game/app/modules/home/views/game.dart';
import 'package:game/app/modules/home/views/lottery_view.dart';
import 'package:game/app/modules/home/views/profile_view.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff47070b),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              child: Container(

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      margin: EdgeInsets.only(right: 15,top: 7),
                      padding: const EdgeInsets.only(left: 15,),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.white,
                              Colors.green,
                            ]),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Row(
                        children: [
                          Center(
                            child: Text(
                              "Balance 200\$",
                              style: TextStyle(
                                  color: Color(0xff8a6906),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),

                          IconButton(
                            onPressed: () {},
                            icon: Center(
                              child: const Icon(
                               Icons.add,
                                size: 25,
                                color: Color(0xff8a6906),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),


                    GestureDetector(
                      onTap: (){
                        Get.to(ProfileView());
                      },
                      child: Container(
                        height: 50,
                        margin: EdgeInsets.only(left: 11,top: 7),
                        padding: const EdgeInsets.only(left: 15,),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.white,
                                Colors.green,

                              ]),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Row(
                          children: [
                            Center(
                              child: Text(
                                "My Profile",
                                style: TextStyle(
                                    color: Color(0xff8a6906),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),

                            IconButton(
                              onPressed: () {},
                              icon: Center(
                                child: const Icon(
                                  Icons.person_outline_outlined,
                                  size: 25,
                                  color: Color(0xff8a6906),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      child: Container(
                        height: MediaQuery.of(context).size.height / 5.5,
                        width: MediaQuery.of(context).size.width / 3,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            image: const DecorationImage(
                                image: AssetImage('assets/images/29logo.jpg'),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(40)),
                      ),
                      onTap: () {},
                    ),
                    GestureDetector(
                      child: Container(
                        height: MediaQuery.of(context).size.height / 5.5,
                        width: MediaQuery.of(context).size.width / 3,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image:
                                    AssetImage('assets/images/lotterylogo.png'),
                                fit: BoxFit.fill),
                            //image: AssetImage('assets/images/andlogo.jpg'),
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(40)),
                      ),
                      onTap: () {
                        Get.to(LotteryView());
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 14.5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      child: Container(
                        height: MediaQuery.of(context).size.height / 5.5,
                        width: MediaQuery.of(context).size.width / 3,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            image: const DecorationImage(
                                image: AssetImage('assets/images/spinlogo.jpg'),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(40)),
                      ),
                      onTap: () {
                        Get.to(Game());
                      },
                    ),
                    GestureDetector(
                      child: Container(
                        height: MediaQuery.of(context).size.height / 5.5,
                        width: MediaQuery.of(context).size.width / 3,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage('assets/images/andlogo.jpg'),
                                fit: BoxFit.fill),
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(40)),
                      ),
                      onTap: () {
                        Get.to(
                          const AndarbaharView(),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
