import 'package:flutter/material.dart';
import 'package:laligurashapp/Screens/selectedproduct_screen.dart';

class ProductvarityScreen extends StatefulWidget {
  const ProductvarityScreen({super.key});
  @override
  State<ProductvarityScreen> createState() => _ProductvarityScreenState();
}
class _ProductvarityScreenState extends State<ProductvarityScreen> {
  final List<String>varityImage= [
    "assets/nepa.png",
    "assets/bok.png",
    "assets/chinese.png",
  ];
  final List<String>titleList = [ "Nepa", "Bok", "Chinese"];
  final List<String>priceList = ["149.99", "149.99", "149.99"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount:2,
        crossAxisSpacing:12,
        mainAxisSpacing: 12,
             childAspectRatio: 150/ 170
        ),
        itemCount:varityImage.length,
        itemBuilder: (context, index) {
          SizedBox(height:15);
          return Padding(
            padding: const EdgeInsets.only(left:15, right:15),
            child: Container(
              decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(10),
                border:Border.all(color:Colors.grey),
              ),
              
              child:Stack(
                children: [
                   Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height:20),
                  Padding(
                    padding: const EdgeInsets.only(left:30),
                    child: Image.asset(
                    varityImage[index], 
                                 ),
                  ),
                  SizedBox(height:2),
                     Padding(
                       padding: const EdgeInsets.only(left:8),
                       child: Text(
                        (titleList[index]),
                          textAlign: TextAlign.left,
                        style:TextStyle(fontSize:12),
                       ),
                     ),
                     SizedBox(height:2),
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
               ],),
              Positioned(
  right: 5,
  bottom: 30,
  child: Material(
    color: Colors.transparent, 
    child: InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder:(context) => SelectedproductScreen()));
      },
      child: SizedBox(
        width: 55,
        height: 55,
        child: Image.asset("assets/plus.png"),
      ),
    ),
  ),
)
              
               
                ],)
            ),
          );
        }
        ),
        
    );
  }
}
