import 'package:flutter/material.dart';
import 'package:ul_screen/ul_screen1.dart';
import 'package:ul_screen/ul_screen2.dart';
import 'package:ul_screen/ul_screen3.dart';
import 'package:ul_screen/ul_screen4.dart';
import 'package:ul_screen/ul_screen5.dart';
import 'package:ul_screen/ul_screen6.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget caller({
    required Widget iconButton,
    required String textButton1,
    required void Function() onPressedAction,
  }) {
    return Container(
     width: 300,
      color: Colors.blue,
      child: TextButton.icon(
        onPressed: onPressedAction,
        icon: iconButton,
        label: Text(textButton1),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'HomeScreen',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(29),
          child: Column(
            
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child:caller(
                iconButton:const Icon(Icons.add),
                textButton1: 'UI_Screen1',
                onPressedAction: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>UlScreen1()),
                  );
                },
                ),
                
              ),
               Padding(
                 padding: const EdgeInsets.all(15),
                 child: caller(
                  iconButton:const Icon(Icons.add),
                  textButton1: 'UI_Screen2',
                  onPressedAction: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>UlScreen2()),
                    );
                  },
                  ),
               ),
                 Padding(
                   padding: const EdgeInsets.all(15),
                   child: caller(
                                 iconButton:const Icon(Icons.add),
                                 textButton1: 'UI_Screen3',
                                 onPressedAction: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>UlScreen3()),
                    );
                                 },
                                 ),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(15),
                   child: caller(
                                 iconButton:const Icon(Icons.add),
                                 textButton1: 'UI_Screen4',
                                 onPressedAction: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>UlScreen4()),
                    );
                      },
                    ),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(15),
                   child: caller(
                       iconButton:const Icon(Icons.add),
                        textButton1: 'UI_Screen5',
                         onPressedAction: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>UIScreen5()),
                    );
                      },
                    ),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(15),
                   child: caller(
                      iconButton:const Icon(Icons.add),
                      textButton1: 'UI_Screen6',
                      onPressedAction: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Ulscreen6()),
                    );
                      },
                    ),
                 ),
            ]
            ),
        ),
        ),
    );
  }
}
