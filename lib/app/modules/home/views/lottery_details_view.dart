import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class LotteryDetailsView extends GetView {
  const LotteryDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('LotteryDetails'),
          backgroundColor: Colors.orangeAccent[200],

        ),
        body: SafeArea(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/free.jpg"),
                  fit: BoxFit.cover),
            ),
            child: Column(children: [
              Container(
                margin: EdgeInsets.all(MediaQuery.of(context).size.height / 100),
                height: MediaQuery.of(context).size.height / 10,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                // child: Text(
                //   "Our Latest Lottery \n         Number",
                //   style: TextStyle(
                //     fontSize: 25,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),

                child: Center(
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText('Our Latest Lottery \n         Number',
                          textStyle: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87)),
                    ],
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.all(MediaQuery.of(context).size.height / 235),
                  height: MediaQuery.of(context).size.height / 3,
                  width: double.infinity,
                  decoration: BoxDecoration(),
                  child: Card(
                    //color: const Color(0x00a64305),
                      elevation: 30,
                      shadowColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height / 34),
                      ),
                      child: ListView(
                        children: [
                          DataTable(columns: [
                            DataColumn(
                                label: Text('Number detail',
                                    style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.width / 34,
                                        fontWeight: FontWeight.bold)
                                )),
                            DataColumn(
                                label: Text('Purchase Date',
                                    style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.width / 34,
                                        fontWeight: FontWeight.bold))),
                            DataColumn(
                                label: Text('Lottery  ',
                                    style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.width / 34,
                                        fontWeight: FontWeight.bold))),
                          ], rows: [
                            DataRow(cells: [
                              DataCell(Text('1320',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ))),
                              DataCell(Text('15-2-2023')),
                              DataCell(Text('25-2-2023')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('1320')),
                              DataCell(Text('15-2-2023')),
                              DataCell(Text('25-2-2023')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('1320')),
                              DataCell(Text('15-2-2023')),
                              DataCell(Text('25-2-2023')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('1320')),
                              DataCell(Text('15-2-2023')),
                              DataCell(Text('25-2-2023')),
                            ]),  DataRow(cells: [
                              DataCell(Text('1320')),
                              DataCell(Text('15-2-2023')),
                              DataCell(Text('25-2-2023')),
                            ]),
                          ])
                        ],
                      ))),
              Container(
                //margin: EdgeInsets.all(MediaQuery.of(context).size.height / 184,),
                height: MediaQuery.of(context).size.height / 14,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),


                child: Center(
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText('Draw History',
                          textStyle: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87)),
                    ],
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.all( MediaQuery.of(context).size.height / 235),
                  height: MediaQuery.of(context).size.height / 3,
                  width: double.infinity,
                  decoration: BoxDecoration(),
                  child: Card(
                      color: const Color(0x00a62b05),
                      elevation: 30,
                      shadowColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        //borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: ListView(
                        children: [
                          DataTable(columns: [
                            DataColumn(
                                label: Text('Lottery Number',
                                    style: TextStyle(
                                        fontSize:MediaQuery.of(context).size.width / 34,
                                        fontWeight: FontWeight.bold))),
                            DataColumn(
                                label: Text('Winning Number',
                                    style: TextStyle(
                                        fontSize:MediaQuery.of(context).size.width / 34,
                                        fontWeight: FontWeight.bold))),
                            DataColumn(
                                label: Text('Status',
                                    style: TextStyle(
                                        fontSize:MediaQuery.of(context).size.width / 34,
                                        fontWeight: FontWeight.bold))),
                          ], rows: [
                            DataRow(cells: [
                              DataCell(Text('1320',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ))),
                              DataCell(Text('32,25,30')),
                              DataCell(Text('Loss')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('2320')),
                              DataCell(Text('32,35,40')),
                              DataCell(Text('Win')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('1620')),
                              DataCell(Text('15,95,98')),
                              DataCell(Text('Loss')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('9320')),
                              DataCell(Text('25,54,78')),
                              DataCell(Text('Loss')),
                            ]), DataRow(cells: [
                              DataCell(Text('9320')),
                              DataCell(Text('25,54,78')),
                              DataCell(Text('Loss')),
                            ]),DataRow(cells: [
                              DataCell(Text('9320')),
                              DataCell(Text('25,54,78')),
                              DataCell(Text('Loss')),
                            ]),DataRow(cells: [
                              DataCell(Text('9320')),
                              DataCell(Text('25,54,78')),
                              DataCell(Text('Loss')),
                            ]),
                          ])
                        ],
                      ))),
            ]),
          ),
        ),
      ),
    );
  }
}
