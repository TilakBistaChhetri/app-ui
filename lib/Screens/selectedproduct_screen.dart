import 'package:flutter/material.dart';
import 'package:laligurashapp/Screens/favourite_screen.dart';
import 'package:laligurashapp/Screens/productvarity_screen.dart';
import 'package:laligurashapp/Screens/tenth_screen.dart';
import 'package:laligurashapp/details_screen.dart';
class SelectedproductScreen extends StatefulWidget {
   
  const SelectedproductScreen({super.key});
  @override
  State<SelectedproductScreen> createState() => _SelectedproductScreenState();
}
class _SelectedproductScreenState extends State<SelectedproductScreen> {
    ScrollController _scrollController = ScrollController();
  bool _isClicked = false;
  //int _currentRating = 0;
  int _currentIndex = 0;

    List<String> sliderList =[
    "assets/slider1.png",
    "assets/slider2.png",
    "assets/slider3.png",
  ];
   final List<String> imageList = [
    "assets/capcium.png", 
    "assets/potato.png",
    "assets/tomato.png",
    "assets/onion.png",
    "assets/cabbage.png",
    "assets/brinjal.png"];
   final List<String> titleList=[
    "Capciium", "Potato", "Tomato", "Onion", "Cabbage", "Brinjal"];
    final List<String> priceList=["Rs. 140.99", "Rs. 140.99", "Rs.140.99", "Rs. 140.99", "Rs. 140.99", "Rs. 140.99"];
      final List<bool> isFavorite = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Column(
        children: [
          SizedBox(height:27),
          Row(
            children: [
                Padding(
                  padding: const EdgeInsets.only(left:2.0),
                  child: Image.asset("assets/firsticon.png", width: 50),
                ),
                 Text(
                  "Gausala, KTM",
                  style: TextStyle(
                    fontSize: 25,
                    color: const Color.fromARGB(255, 48, 45, 45),
                    fontWeight: FontWeight.bold,
                  ),
                ),
               Image.asset("assets/secondicon.png", width: 50),
            ],
          ),
           SizedBox(height:200,
         child:ListView.builder(
           scrollDirection: Axis.horizontal,
          itemCount: sliderList.length,
          itemBuilder: (context, index) {
            return Padding(padding: EdgeInsets.all(15),
            child:Container(
              width:300, height:300,
              decoration:BoxDecoration(
                color:Colors.red,
                borderRadius:BorderRadius.circular(10),
                image:DecorationImage(image: AssetImage(
                sliderList[index],
                ),
                fit:BoxFit.cover,
                ) 
              ),
            )
            );
         }),
           ),
           SizedBox(height:5),
           Padding(
             padding: const EdgeInsets.only(left:12),
             child: Align(
              alignment:Alignment.centerLeft,
              child:Text("Vegetables", style:TextStyle(fontSize:25,fontWeight:FontWeight.bold)),
             ),
           ),
          SizedBox(height:2),
          Flexible( child:
      GridView.builder(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, 
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
             childAspectRatio: 150/ 200 
          ),
          itemCount: imageList.length,
          itemBuilder: (BuildContext context, int index) {
            SizedBox(height:5);
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey), 
              ),
                child: Stack(
                  children: [
                    Positioned(
                      right:4,
                      top:5,
                      child:InkWell(
                        onTap:() {
                          setState(() {
                         _isClicked = !_isClicked;
                          });
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>FavouriteScreen()));
                        },
                  child: Image.asset(
                "assets/love.png",
               height: 30,
                width: 30,
                fit: BoxFit.cover,
                 color: _isClicked
                ? const Color.fromARGB(255, 11, 61, 13).withOpacity(0.5)
            : null,
                ),
                      ),
                      ),
                      Positioned(
                      right:4,
                      bottom:25,
                      child:InkWell(
                        onTap:() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ProductvarityScreen()));
                        },           
                child: Image.asset(
                "assets/cart.png",
               height: 30,
                width: 30,
                fit: BoxFit.cover,
                ),
                      ),
                      ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height:25),
                    InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> TenthScreen()));
                        },
                    child:Image.asset(imageList [index]),
                    ),
                    const SizedBox(height: 2), 
                     Padding(
                       padding: const EdgeInsets.only(left:8),
                       child: Text(
                        (titleList[index]),
                          textAlign: TextAlign.left,
                        style:TextStyle(fontSize:12),
                       ),
                     ),
                     const SizedBox(height: 2), // Add space between image and text
                    Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: Text(
                        (priceList[index]),
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                     ),
                  ],
                )
            );
          },
        ),
       ),
        SizedBox(height:5),
        Container(
          width:380,
          height:70,
          decoration:BoxDecoration(
            borderRadius:BorderRadius.circular(10),
            color:const Color.fromARGB(255, 16, 78, 18)
          ),

          child:Stack(
            children: [
              Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                    Padding(
                      padding: const EdgeInsets.only(left:12),
                      child: Image.asset(
                                      'assets/plate.png',
                                      width: 50,
                                      height: 50,
                                    ),
                    ),

              // Image on the right side
              Padding(
                padding: const EdgeInsets.only(right:12),
                child: Image.asset(
                  'assets/plate1.png',
                  width: 50,
                  height: 50,
                ),
              ),
               Positioned(
        top: 0,
        right: 20, 
        child: Image.asset(
          'assets/1.png',
          width: 30, 
          height: 30, 
        ),
           ),
            ],
          ),
          

            ],
          )

              
            
           

        )
      ]
    ),
    // For NavigationBar 
      bottomNavigationBar:BottomNavigationBar(
        type:BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Image.asset(
          "assets/home.png",   width:24, height:24,
        ),
        label:"Home"
        ),
         BottomNavigationBarItem(icon: Image.asset(
          "assets/heart.png",    width:24, height:24,
        ),
        label:"Favourite",
        ),
         BottomNavigationBarItem(icon: Image.asset(
          "assets/search.png",    width:24, height:24,
        ),
        label:"Search",
        ),
         BottomNavigationBarItem(icon: Image.asset(
          "assets/profile.png",    width:24, height:24,
        ),
        label:"Profile",
        ),
         BottomNavigationBarItem(icon: Image.asset(
          "assets/package.png",  width:24, height:24,
        ),
        label:"Package",
        ),
      ],
      )

    );
  }
}

