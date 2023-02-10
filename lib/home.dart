import 'package:flutter/material.dart';
import 'dart:math';

class LotteryApp extends StatefulWidget {
  const LotteryApp({super.key});

  @override
  State<LotteryApp> createState() => _LotteryAppState();
}

class _LotteryAppState extends State<LotteryApp> {
  Random random = Random();
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        elevation: 3,
        title: const Center(child: Text('Lottery App')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
              child: Text(
            'Lottery Winning No is 3',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
          )),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 150,
            width: 290,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.19),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: x == 3
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.done,
                          color: Colors.green,
                          size: 40,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Congratulations! You Win your no is $x',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.error,
                          color: Colors.red,
                          size: 35,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Better Luck next time your no is $x \ntry again',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        onPressed: () {
          x = random.nextInt(10);
          setState(() {});
        },
        child: const Icon(
          Icons.refresh_sharp,
        ),
      ),
    );
  }
}
