import 'dart:math' as math;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  const Game({super.key});

  @override
  State<StatefulWidget> createState() => _GameState();
}

class _GameState extends State<Game> with SingleTickerProviderStateMixin {
  List<double> sectors = [100, 20, 0.15, 0.5, 50, 20, 100, 50, 20, 50];
  int randomSectorIndex = -1;
  List<double> sectorRadians = [];
  double angle = 0;
  bool spinning = false;
  double earnedValue = 0;
  double totalEarnings = 0;
  int spins = 0;

  math.Random random = math.Random();
//spin animation controller
  late AnimationController controller;
  //animation
  late Animation<double> animation;

  //initial setup
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //generate sector radius
    generateSectorRadians();

    //animation controller
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 3600),
    );
    //the tween
    Tween<double> tween = Tween<double>(begin: 0, end: 1);
    //the curve behaviour
    CurvedAnimation curve = CurvedAnimation(
      parent: controller,
      curve: Curves.decelerate,
    );

    //animation
    animation = tween.animate(curve);

    //re build the screen as animation continues
    controller.addListener(() {
      //only when animation complete
      if (controller.isCompleted) {
        //rebuild
        setState(() {
          //recordstats
          recordStats();
          //update status bool
          spinning = false;
        });
      }
    });
  }

  //dispose controller after dispose
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: _body(),
    );
  }

  //body
  Widget _body() {
    //background and game contents
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/bg.jpg"), fit: BoxFit.cover),
      ),
      child: _gameContent(), //content
    );
  }

  //game content mathod
  Widget _gameContent() {
    //use stack
    return Stack(
      children: [
        _gameTitle(),
        _gameWheel(),
        _gameActions(),
        _gameStats(),
      ],
    );
  }

//
  Widget _gameWheel() {
    //center every thing
    // var animationController;
    return Center(
      child: Container(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height / 35,
            left: MediaQuery.of(context).size.width * 0.012),

        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.5,
        decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.contain, image: AssetImage("assets/images/belt.png")),
        ),
        //   use animated builder for spinning
        child: InkWell(
          child: AnimatedBuilder(
            animation: animation,
            builder: (context, child) {
              return Transform.rotate(
                angle: controller.value * angle,
                child: Container(
                  //WHEEL CONTAINER
                  margin:
                      EdgeInsets.all(MediaQuery.of(context).size.width * 0.078),
                  //  EdgeInsets.all(MediaQuery.of(context).size.width * 0.0),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("assets/images/wheel.png"),
                    fit: BoxFit.contain,
                  )),
                ),
              );
            },
          ),

          //on wheel tap
          onTap: () {
            //if not spinning,spin
            setState(() {
              if (!spinning) {
                spin(); //a method to spin the wheel /do the animation in it
                spinning = true; //now spinning status
              }
            });
          },
        ),
      ),
    );
  }

  Widget _gameTitle() {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / 17),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          border: Border.all(
            color: CupertinoColors.systemYellow,
            width: 2,
          ),
          gradient: const LinearGradient(
            colors: [Color(0XFF2d014c), Color(0XFFf8009e)],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        ),
        child: const Text(
          "Fortune Wheel",
          style: TextStyle(fontSize: 40, color: CupertinoColors.systemYellow),
        ),
      ),
    );
  }

  //game actions
  Widget _gameActions() {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        margin: EdgeInsets.only(
            bottom: MediaQuery.of(context).size.height * 0.17,
            left: 20.0,
            right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            //withdraw btn
            InkWell(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(4)),
                  border: Border.all(color: CupertinoColors.systemYellow),
                ),
                child: IconButton(
                  onPressed: () {
                    print("ready to withdraw \$ $totalEarnings ?");
                  },
                  icon: const Icon(Icons.arrow_circle_down),
                ),
              ),
            ),
            //reset  button
            InkWell(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(4)),
                  border: Border.all(color: CupertinoColors.systemYellow),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                child: Text(
                  "Reset",
                  style: TextStyle(
                    fontSize: spinning ? 20 : 35,
                    color: const Color(0XFF41006e),
                  ),
                ),
              ),
              onTap: () {
                if (spinning) return;
                setState(() {
                  resetGame(); //resetgame
                });
              },
            ),
            InkWell(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(4)),
                  border: Border.all(color: CupertinoColors.systemYellow),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                child: Text(
                  spinning ? "Spinning" : "Spin",
                  style: TextStyle(
                    fontSize: spinning ? 20 : 35,
                    color: const Color(0XFF41006e),
                  ),
                ),
              ),
              onTap: () {
                //if not spinning ,spin
                setState(() {
                  if (!spinning) {
                    spin();
                    spinning = true; //now spinning
                  }
                });
              },
            )
          ],
        ),
      ),
    );
  }

  void generateSectorRadians() {
    //radian for 1 sector
    double sectorRadian = 2 * math.pi / sectors.length;

    //make it some how large

    for (int i = 0; i < sectors.length; i++) {
      //make it greater as much you can
      sectorRadians.add((i + 1) * sectorRadian);
    }
  }
//used to record game statistics

  void recordStats() {
    earnedValue = sectors[
        sectors.length - (randomSectorIndex + 1)]; //current earned value
    //todo sent this to database
    totalEarnings = totalEarnings + earnedValue; //total earnings
    spins = spins + 1; //all numbers of spins so far
  }

  void spin() {
    //spinning here
    //get any random sector index
    //todo minus the value of spins here
    randomSectorIndex = random.nextInt(sectors.length); //bound exclusive
    //generate a random radian   to spin  to the wheel
    double randomRadian = generateRandomRadianToSpin();
    controller.reset(); //reset any previous value
    angle = randomRadian;
    controller.forward(); //spin
  }

  double generateRandomRadianToSpin() {
    //make it higher as math as you can
    return (2 * math.pi * sectors.length) + sectorRadians[randomSectorIndex];
  }

  Widget _gameStats() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(
            bottom: MediaQuery.of(context).size.height / 35,
            left: MediaQuery.of(context).size.height / 39,
            right: MediaQuery.of(context).size.height / 39),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          border: Border.all(
            color: CupertinoColors.systemYellow,
            width: 2,
          ),
          gradient: const LinearGradient(
            colors: [Color(0XFF2d014c), Color(0XFFf8009e)],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        ),
        child: Table(
          border: TableBorder.all(color: CupertinoColors.systemYellow),
          children: [
            TableRow(children: [
              _titleColumn("Earned"),
              _titleColumn("earnings"),
              _titleColumn("Spins"),
            ]),
            TableRow(children: [
              _valueColumn(earnedValue),
              _valueColumn(totalEarnings),
              _valueColumn(spins),
            ])
          ],
        ),
      ),
    );
  }

  Column _titleColumn(String title) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Text(
            title,
            style: const TextStyle(fontSize: 20.0, color: Colors.yellowAccent),
          ),
        )
      ],
    );
  }

  _valueColumn(var val) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Text(
            '$val',
            style: const TextStyle(fontSize: 25.0, color: Colors.white),
          ),
        )
      ],
    );
  }

  void resetGame() {
    spinning = false;
    angle = 0;
    earnedValue = 0;
    totalEarnings = 0;
    spins = 0;
    controller.reset();
  }
}
