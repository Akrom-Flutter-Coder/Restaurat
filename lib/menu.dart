import 'package:flutter/material.dart';
class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
   int selectedIndex = 0;
   void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
  int? ind;
 String? matn;
  List foods=["National foods","Fast foods","Salads and drikns"];
  List foodName=["Fettucine Alfredo","Avocado Salad Bowl","Guatamala"];
  List foodImage=["food1.png","food2.png","food3.png"];
  List foodPrice=["200000","190ming","170ming"];
  List foodinfo=[
    "Pasta without borders, straight from the moutains of Northen Italy",
    "Freshly sourced avocado from the hills of Guatamala, our avocados are sus tainably grown and harvested",
    "Foods are classified into groupings by the Dietary Guidelines for Americans and MyPlate. "
    ];


    List fastFoodName=["Lavash","Burger","Hor Dog"];
    List fastFoodPrice=["30ming","30ming","17ming"];
    List fastFoodImage=["food1_fast.webp","food2_fast.png","food3_fast.png"];
    List fastFoodInfo=[
          "Foods are classified into groupings by the Dietary Guidelines for Americans and MyPlate",
    "Pasta without borders, straight from the moutains of Northen Italy",
        "Freshly sourced avocado from the hills of Guatamala, our avocados are sustainably grown and harvested" 
    ];


    List SaladName=["Bella New","Olivie","Koprez"];
    List saladrice=["29ming","33ming","37ming"];
    List saladImage=["salad1.png","salad2.png","salad3.png"];
    List saladInfo=[
      "«Мужской каприз» — любимый многими салат, который всегда находится в топе салатов",
      "Плюс этого салата в том, что он настолько сытный, что  легкостью может заменить главное блюдо. ",
      "Хранить салат в холодильнике в закрытом контейнере не более суток."
    ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 230, 143, 29),
        title:const Text('Menu',
         style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w600
                  
                ),
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          ind=index;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                        height: 40,
                       width: 80,
                       child: Text(foods[index],
                       style: TextStyle(
                         color: ind==index?Color.fromARGB(255, 230, 143, 29):Colors.grey,
                       ),
                       ),
                      ),
                    );
                  })),
                ),
              ),
          ]),
          SizedBox(
            height: 580,
            child: ListView.builder(
              itemCount:3 ,
              scrollDirection: Axis.vertical,
              itemBuilder: ((context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Container(
                  height: 320,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 30),
                       child: Container(
                        height: 190,
                       child: Image.asset('assets/images/${
                        ind==2?(saladImage[index])
                      : (ind==1?fastFoodImage[index]
                       :foodImage[index])}',
                       fit: BoxFit.cover,),
                       ),
                     ),
                   const  SizedBox(height: 19,),
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 35),
                       child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(ind==2?(SaladName[index]):(ind==1?fastFoodName[index] :foodName[index]),
                          style:const TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 230, 143, 29),
                            fontWeight: FontWeight.w600
                          ),
                          ),
                            Text(ind==2?(saladrice[index]):(ind==1?fastFoodPrice[index]: foodPrice[index]),
                          style: const TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.w600
                          ),
                          ),
                        ],
                       ),
                     ),
                     Padding(
                      //ind==1?fastFoodInfo[index]:foodinfo[index]
                       padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 10),
                       child:Text(ind==2?(saladInfo[index]):(ind==1?fastFoodInfo[index]:foodinfo[index])
                       ),
                     )
                    ],
                  ),
                ),
              );
            })),
          )
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.search,size: 35,),
            label: 'Search',
            backgroundColor:Color.fromARGB(255, 230, 143, 29),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.badge_outlined,size: 35,),
            label: 'Trade',
            backgroundColor: Color.fromARGB(255, 230, 143, 29),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on,size: 35,),
            label: 'Loction',
            backgroundColor: Color.fromARGB(255, 230, 143, 29),
          ),
          BottomNavigationBarItem(
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
