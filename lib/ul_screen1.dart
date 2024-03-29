import 'package:flutter/material.dart';
import 'package:ul_screen/home.dart';

class UlScreen1 extends StatelessWidget {
  Widget ul_1({
    required Widget iconButton,
    required String buttonText,
    Widget? lastButton,
  }) {
    return ListTile(
      leading: iconButton,
      title: Text(
        buttonText,
        style: TextStyle(fontSize: 20),
      ),
      trailing: lastButton,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
              (route) => false,
            );
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text('Additional Information'),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  ul_1(
                    iconButton: Icon(
                      Icons.share_outlined,
                      size: 30.0,
                      color: Colors.black45,
                    ),
                    buttonText: 'Share Dukaan App',
                    lastButton: Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 30.0,
                      color: Colors.black54,
                    ),
                  ),
                  ul_1(
                    iconButton: Icon(
                      Icons.sms,
                      size: 30.0,
                      color: Colors.black54,
                    ),
                    buttonText: 'Change Language',
                    lastButton: Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 30.0,
                    ),
                  ),
                  ul_1(
                    iconButton: Icon(
                      Icons.chat_bubble_outline,
                      size: 30.0,
                      color: Colors.black54,
                    ), 
                    buttonText: 'WhatsApp chat support',
                    lastButton: Icon(
                      Icons.toggle_on_sharp,
                      size: 40.0,
                      color: Colors.blue,
                    ),
                  ),
                  ul_1(
                    iconButton: Icon(
                      Icons.lock,
                      size: 30.0,
                      color: Colors.black54,
                    ),
                    buttonText: 'Privacy Policy',
                    lastButton: null,
                  ),
                  ul_1(
                    iconButton: Icon(Icons.star_border_outlined, size: 30.0),
                    buttonText: 'Rate Us',
                    lastButton: null,
                  ),
                  ul_1(
                    iconButton: Icon(Icons.logout_outlined, size: 30.0),
                    buttonText: 'Sign out',
                    lastButton: null,
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              alignment: Alignment.center,
              child:const Column(
                children: [
                  Text(
                    'Version',
                    style: TextStyle(
                      // shadows: [
                      //   Shadow(
                      //     color: Colors.black26,
                      //     offset: Offset(2, 2),
                      //     blurRadius:2
                          
                      //   ),
                      // ],
                     color: Colors.black26,
                                       ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text(
                      '2.4.2',
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
