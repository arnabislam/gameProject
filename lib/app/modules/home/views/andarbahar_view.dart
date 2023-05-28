import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:game/app/modules/home/views/round_icon_button_view.dart';

class AndarbaharView extends StatefulWidget {
  const AndarbaharView({Key? key}) : super(key: key);

  @override
  State<AndarbaharView> createState() => _AndarbaharViewState();
}

class _AndarbaharViewState extends State<AndarbaharView> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            // height: MediaQuery.of(context).size.height/0.1,
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Color(0xff2e0206),
                image: DecorationImage(
                  image: AssetImage("assets/images/andarbahar.jpg"),
                )),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 1.74,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 25),
                  child: const CircleAvatar(
                    radius: 37,
                    backgroundImage: AssetImage(
                      "assets/images/bdm.jpg",
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 6),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xff330f17),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: FittedBox(
                    child: Row(
                      children: [
                        RoundIconButton(
                          icon: FontAwesomeIcons.minus,
                          onPressed: () {},
                        ),
                        Card(
                          elevation: 50,
                          shadowColor: Colors.black,
                          color: const Color(0xffc5de62),
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height / 8,
                            width: MediaQuery.of(context).size.width / 10,
                            child: const Center(
                              child: Text(
                                "Andar\n25000",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                        RoundIconButton(
                          icon: FontAwesomeIcons.plus,
                          onPressed: () {},
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 10,
                          width: MediaQuery.of(context).size.width / 5.2,
                          decoration: BoxDecoration(
                              color: const Color(0xff232422),
                              borderRadius: BorderRadius.circular(6)),
                          child: Row(
                            children: const [
                              Icon(
                                FontAwesomeIcons.coins,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 28,
                              ),
                              Text(
                                "1900000",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                        RoundIconButton(
                          icon: FontAwesomeIcons.minus,
                          onPressed: () {},
                        ),
                        Card(
                          elevation: 50,
                          shadowColor: Colors.black,
                          color: const Color(0xffc5de62),
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height / 8,
                            width: MediaQuery.of(context).size.width / 10,
                            child: const Center(
                              child: Text(
                                "Bahar\n13000",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                        RoundIconButton(
                          icon: FontAwesomeIcons.plus,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          //RandomImageScreen()
        ],
      ),
    );
  }
}

class RandomImageScreen extends StatefulWidget {
  const RandomImageScreen({super.key});

  @override
  _RandomImageScreenState createState() => _RandomImageScreenState();
}

class _RandomImageScreenState extends State<RandomImageScreen> {
  final List<String> imageList = [
    'https://picsum.photos/200/300?random=1',
    'https://picsum.photos/200/300?random=2',
    'https://picsum.photos/200/300?random=3',
    'https://picsum.photos/200/300?random=4',
    'https://picsum.photos/200/300?random=5',
    'https://picsum.photos/200/300?random=6',
    'https://picsum.photos/200/300?random=7',
    'https://picsum.photos/200/300?random=8',
    'https://picsum.photos/200/300?random=9',
    'https://picsum.photos/200/300?random=10',
  ];
  String currentImage = '';
  Timer? timer;
  Timer? autoStopTimer;

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        currentImage = getRandomImage();
      });
    });
    autoStopTimer = Timer(const Duration(seconds: 10), () {
      stopTimer();
    });
  }

  String getRandomImage() {
    final random = Random();
    final index = random.nextInt(imageList.length);
    return imageList[index];
  }

  void stopTimer() {
    timer?.cancel();
    autoStopTimer?.cancel();
  }

  @override
  void initState() {
    super.initState();
    currentImage = getRandomImage();
  }

  @override
  void dispose() {
    stopTimer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              currentImage,
              width: 90,
              height: 50,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                stopTimer();
                startTimer();
              },
              child: const Text('Randomize Image'),
            ),
          ],
        ),
      ),
    );
  }
}
