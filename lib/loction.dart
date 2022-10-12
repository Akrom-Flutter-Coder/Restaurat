import 'package:flutter/material.dart';
class Loction extends StatefulWidget {
  const Loction({super.key});

  @override
  State<Loction> createState() => _LoctionState();
}

class _LoctionState extends State<Loction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Loction'),
        backgroundColor: Color.fromARGB(255, 230, 143, 29),
      ),
      body: Column(
      
        children: [
          Stack (
            children: [
             Image(image: AssetImage('assets/images/Map.png')),
             Padding(
               padding: const EdgeInsets.only(top: 380),
               child: Image(image: AssetImage('assets/images/Contect.png')),
             ),
             
          ],),
        
          
        ],
      ),
      
    );
  }
}