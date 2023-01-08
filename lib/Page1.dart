// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//import 'package:flutter_blue/flutter_blue.dart';

//import 'Page2.dart';

class Page1 extends StatefulWidget {


  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 100.0,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/connectBlu');
              },
              child: CircleAvatar(
                radius: 70.0,
                backgroundColor: Colors.deepOrange.shade300,
                child: Text(
                  'Commencer',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 70.0,
            ),
            Text(
              'Lanelle',
              style: TextStyle(
                fontFamily: 'DancingScript',
                fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.orange.shade50,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Text(
                  'Suvie votre santé!',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 20.0,
                    color: Colors.black12,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                  ),

                ),
              ],
            ),
            SizedBox(
              height: 70.0,
            ),


            
             
          ],
        ),
      ),
    );
  }
}
