import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant/loction.dart';
import 'package:restaurant/menu.dart';
class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
    int selectedIndex = 0;
   void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
       children: [
       Container(
           width:double.infinity ,
          height: double.infinity,
          child: Image.asset('assets/images/home.jpg',fit: BoxFit.cover,),
          decoration: BoxDecoration(
          ),
          ),
         Column(
        
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 250,
                width: 250,
               decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(140),
                color: Colors.white
               ),
               child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Image.asset('assets/images/Group.png'),
                const Text('BELLA',
                 style: TextStyle(
                  fontSize: 60,
                 color: Color(0xff231F20),
                 fontWeight: FontWeight.bold,
                 ),),
               const  Text('Northern Italian',
                 style: TextStyle(
                  color: Color.fromARGB(255, 230, 143, 29),
                   fontWeight: FontWeight.w600
                 ),),
                const Text('Cuisine',
                 style: TextStyle(
                  color: Color.fromARGB(255, 230, 143, 29),
                  fontWeight: FontWeight.w600
                 ),),
               const  SizedBox(
                  height: 18,
                 ),
                ],
               ),
              ),
            ),
           const SizedBox(height: 25),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return Menu();
                })));
              },
              child: Container(
                height: 75,
                width: 320,
               decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(29),
                color: Color.fromARGB(255, 230, 143, 29),
               ),
               child: const Center(
                child: Text('MENU',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w600
                  
                ),
                ),
               ),
              ),
            ),
              const SizedBox(height: 25),
            InkWell(
              onTap: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: ((context) {
                    return Loction();
                  })));
                });
              },
              child: Container(
                height: 75,
                width: 320,
               decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(29),
                color: Color.fromARGB(255, 230, 143, 29),
               ),
               child: const Center(
                child: Text('LOCATIONS',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w600
                  
                ),
                ),
               ),
              ),
            ),
              const SizedBox(height: 25),
            Container(
              height: 75,
              width: 320,
             decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(29),
              color: Color.fromARGB(255, 230, 143, 29),
             ),
             child: const Center(
              child: Text('ENQUIRIES',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.w600
                
              ),
              ),
             ),
            )
          ],
         )
       ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:  <BottomNavigationBarItem>[
         const BottomNavigationBarItem(
            icon: Icon(Icons.search,size: 35,),
            label: 'Search',
            backgroundColor:Color.fromARGB(255, 230, 143, 29),
          ),
        const  BottomNavigationBarItem(
            icon: Icon(Icons.badge_outlined,size: 35,),
            label: 'Trade',
            backgroundColor: Color.fromARGB(255, 230, 143, 29),
          ),
          BottomNavigationBarItem(
            icon: InkWell(
               onTap: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: ((context) {
                    return Loction();
                  })));
                });
              },
              child: Icon(Icons.location_on,size: 35,)),
            label: 'Loction',
            backgroundColor: Color.fromARGB(255, 230, 143, 29),
          ),
        const  BottomNavigationBarItem(
            icon: Icon(Icons.settings,size: 35,),
            label: 'Settings',
            backgroundColor: Color.fromARGB(255, 230, 143, 29),
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.grey[350],
        onTap: onItemTapped,
      ),
    );
  }
}