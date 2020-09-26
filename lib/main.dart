import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:purchase_app/menu.dart';

void main() {
  runApp(MaterialApp(
      home: Homepage1()
  ));
}
class Homepage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Colors.white,
          onPressed: (){},
        ),
        title: Text('shopprix'),
        backgroundColor: Colors.red,
        actions:<Widget> [
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
            onPressed: (){},
          ),
        ],
             ),
      body: ListView(
          children:<Widget> [
       Column(
      crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            Categories(),
         Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft : Radius.circular(15.0),bottomRight: Radius.circular(15.0) ),
            color: Colors.indigoAccent
        ),
          height: 150.0,
          padding: EdgeInsets.only(top: 5.0),
        child: ListView.builder(
            padding: EdgeInsets.only(left: 15.0),
            scrollDirection: Axis.horizontal,
            itemCount: ads.length,
            itemBuilder: ( BuildContext context,int index){
              return Column(
                children:<Widget> [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: CircleAvatar(radius: 30.0,
                      backgroundImage: AssetImage(ads[index].imageUrl),
                    ),
                  ),
                  Text(ads[index].name,style: TextStyle(color: Colors.white,fontSize: 12.0),),
                ],
              );
            }
        ),
      ),

          ]
      ),
  ]
    )
    );
  }
}

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories =["Hand Bag", "Jewellery", "Footwear", "Dresses"];
  int selectedIndex =0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context,index) => buildCategory(index),
            ),
    );
  }
}
Widget buildCategory( int index){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 3.0),
    child: Column(
      children:<Widget> [
        Text(
          categories[index],
          style: TextStyle(fontWeight: FontWeight.bold)

        )
      ],
    ),
  )

}