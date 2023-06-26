// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors

import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {

  const MyPage({super.key});

  @override
  _MyPageState createState() => _MyPageState();
  
}

class _MyPageState extends State<MyPage> {

  List<bool> buttonStatus = [true, false, false, false, false, false, false, false];

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: Text('Ejemplo de MaterialButtons condicionales'),

      ),

      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // Botón 1

            MaterialButton(

              onPressed: 
              
              (buttonStatus[0] == true) ? () => _buttonPressed(0) : null,
              child: Text('Botón 1'),

            ),

            SizedBox(height: 16.0),

            // Botón 2

            MaterialButton(

              onPressed: (buttonStatus[1] == true) ? () => _buttonPressed(1) : null,
              child: Text('Botón 2'),

            ),

            SizedBox(height: 16.0),

            // Botón 3

            MaterialButton(

              onPressed: (buttonStatus[2] == true) ? () => _buttonPressed(2) : null,
              child: Text('Botón 3'),

            ),

            SizedBox(height: 16.0),

            // Botón 4

            MaterialButton(

              onPressed: (buttonStatus[3] == true) ? () => _buttonPressed(3) : null,
              child: Text('Botón 4'),

            ),

            SizedBox(height: 16.0),

            // Botón 5

            MaterialButton(

              onPressed: (buttonStatus[4] == true) ? () => _buttonPressed(4) : null,
              child: Text('Botón 5'),

            ),

            SizedBox(height: 16.0),

            // Botón 6

            MaterialButton(

              onPressed: (buttonStatus[5] == true) ? () => _buttonPressed(5) : null,
              child: Text('Botón 6'),

            ),

            SizedBox(height: 16.0),

            // Botón 7

            MaterialButton(

              onPressed: (buttonStatus[6] == true) ? () => _buttonPressed(6) : null,
              child: Text('Botón 7'),

            ),

            SizedBox(height: 16.0),

            // Botón 8

            MaterialButton(

              onPressed: (buttonStatus[7] == true) ? () => _buttonPressed(7) : null,
              child: Text('Botón 8'),

            ),

          ],

        ),

      ),

    );

  }

  void _buttonPressed(int index) {

    setState(() { 
      
      buttonStatus[index] = false;

        if (!(buttonStatus.length - 1 == index)) {

          buttonStatus[index + 1] = true;

        }
      
      }
      
    );

  }

}


void main() {

  runApp(MaterialApp(

    home: MyPage(),

    )
  
  );

}

