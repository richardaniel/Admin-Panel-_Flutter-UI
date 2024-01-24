import 'package:flutter/material.dart';
import 'package:toktik/screens/main/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyhomePage(),
    );
    throw UnimplementedError();
  }
}

class MyhomePage extends StatelessWidget {
  const MyhomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(defaultPadding * 1.5),
        child: Row(children: [
          Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: defaultPadding, vertical: defaultPadding * 3),
                decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Column(
                  children: [
                    SizedBox(
                      height: 120,
                      child: DrawerHeader(
                          child: Column(
                        children: [
                          Row(
                            children: [Image.asset('assets/images/logop.png')],
                          )
                        ],
                      )),
                    )
                  ],
                ),
              )),
          Expanded(flex: 6, child: Container())
        ]),
      ),
    );
  }
}
