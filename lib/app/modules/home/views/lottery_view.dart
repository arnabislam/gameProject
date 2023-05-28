import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:game/app/modules/home/views/profile_view.dart';
import 'package:get/get.dart';

import 'lottery_details_view.dart';

class LotteryView extends GetView {
  const LotteryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Lucky Lottery",
          style: TextStyle(
              fontSize: MediaQuery.of(context).size.width / 15,
              fontWeight: FontWeight.bold,
              color: Colors.black54),
        ),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/free.jpg"), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            CarouselSlider(
              items: [
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/free.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/lottery.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/free.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height / 3.5,
                autoPlay: true,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 45,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      //  margin: EdgeInsets.all(15),
                      decoration: const BoxDecoration(
                        color: Color(0xFFEF6C00),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 5,
                              color: Colors.yellow,
                              // color: Color(0xFFFD180),
                              spreadRadius: 5)
                        ],
                      ),
                      child: GestureDetector(
                        onTap: () {
                         Get.to(LotteryDetailsView());

                        },
                        child: CircleAvatar(
                          backgroundColor: Color(0XFFF57C00),
                          radius: MediaQuery.of(context).size.height / 12,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "Total Ticket ",
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                "3500 ",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 24,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Color(0xFFEF6C00),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 5,
                              color: Colors.yellow,
                              // color: Color(0xFFFD180),
                              spreadRadius: 5)
                        ],
                      ),
                      child: CircleAvatar(
                        backgroundColor: const Color(0XFFF57C00),
                        //radius: 82,
                        radius: MediaQuery.of(context).size.height / 12,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Available Ticket ",
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              "350 ",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 45,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      //margin: EdgeInsets.all(15),
                      decoration: const BoxDecoration(
                        color: Color(0xFFFF7400),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 5,
                              color: Colors.yellow,
                              // color: Color(0xFFFD180),
                              spreadRadius: 5)
                        ],
                      ),
                      child: CircleAvatar(
                        backgroundColor: const Color(0XFFF57C00),
                        // radius: 82,
                        radius: MediaQuery.of(context).size.height / 12,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Buy Lottery \n      Now ",
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width / 20,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 24,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Color(0xFFEF6C00),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 5,
                              color: Colors.yellow,
                              // color: Color(0xFFFD180),
                              spreadRadius: 5)
                        ],
                      ),
                      child: CircleAvatar(
                        backgroundColor: Color(0XFFF57C00),
                        //radius: 82,
                        radius: MediaQuery.of(context).size.height / 12,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Your Lottery \n "
                              "Details ",
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width / 20,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 45,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 13,
              width: MediaQuery.of(context).size.width / 3,
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                //color: Color(0xff5500),
                borderRadius: BorderRadius.circular(15),

                boxShadow: const [
                  BoxShadow(
                      blurRadius: 5, color: Colors.yellow, spreadRadius: 5)
                ],
              ),
              child: Center(
                  child: Text(
                "Result",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.width / 14),
              )),
            )
            //ElevatedButton(onPressed: (){}, child: Text("shjfrvbkwuy"))
          ],
        ),
      ),
    );
  }
}
