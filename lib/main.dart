import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app2/menu.dart';


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
        title: Text('Shopprix',style: TextStyle(color: Colors.orange),),
        backgroundColor: Colors.black87,
        actions:<Widget> [
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            color: Colors.white,
            onPressed: (){},
          ),
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Hello User!',style: TextStyle(fontSize: 25),),
              accountEmail: Text(' '),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                  child: Icon(Icons.person,color: Colors.white,),
                ) ,
              ),
              decoration: BoxDecoration(
                color: Colors.orange
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('My Profile'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.shop),
              title: Text('My Orders'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About'),
              onTap: (){
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 10.0),
          child:ListView(
              children:<Widget> [
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget> [
                      Category(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 200.0,
                          color: Colors.white10,
                          padding: EdgeInsets.only(top: 5.0),
                            child: Image.asset('asset/images/style2.jpg',
                              fit: BoxFit.fill,),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 5.0),
                        decoration: BoxDecoration(
                            border: Border(top: BorderSide(width: 3.0,color: Colors.black54)),
                        ),
                        height: 120.0,
                        child: ListView.builder(
                            padding: EdgeInsets.only(left: 15.0),
                            scrollDirection: Axis.horizontal,
                            itemCount: ads.length,
                            itemBuilder: ( BuildContext context,int index){
                              return Column(
                                children:<Widget> [
                                  Padding(
                                    padding: const EdgeInsets.only(left:10.0,right: 10.0,top: 15.0),
                                    child: CircleAvatar(radius: 30.0,
                                      backgroundImage: AssetImage(ads[index].imageUrl),
                                    ),
                                  ),
                                  Text(ads[index].name,style: TextStyle(color: Colors.black,fontSize: 12.0,fontWeight: FontWeight.bold),),
                                ],
                              );
                            }
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: Container(
                              height: 170,
                              width: 160,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                                color: Colors.black12,
                              ),
                              child: Image.asset('asset/images/jeans1.jpg',fit: BoxFit.contain,),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10.0,left: 25.0),
                            child: Container(
                              height: 170,
                              width: 160,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                                color: Colors.black12,
                              ),
                              child: Image.asset('asset/images/guitar.jpg',fit: BoxFit.contain,),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: Container(
                              height: 170,
                              width: 160,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                                color: Colors.black12,
                              ),
                              child: Image.asset('asset/images/lappi.webp',fit: BoxFit.contain,),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10.0,left: 25.0),
                            child: Container(
                              height: 170,
                              width: 160,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                                color: Colors.black12,
                              ),
                              child: Image.asset('asset/images/shoe1.jpg',fit: BoxFit.contain,),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: Container(
                              height: 170,
                              width: 160,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                                color: Colors.black12,
                              ),
                              child: Image.asset('asset/images/iphone.jpg',fit: BoxFit.contain,),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10.0,left: 25.0),
                            child: Container(
                              height: 170,
                              width: 160,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                                color: Colors.black12,
                              ),
                              child: Image.asset('asset/images/headphone.jpg',fit: BoxFit.contain,),
                            ),
                          )
                        ],
                      )
                    ],
                              ),
    ]
                        ),
      ),
                  );
  }
}
class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  List<String> category =["Latest","Tops for Women","Jeans for Men","Phones"];
  int selectedIndex= 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount:category.length,
        padding: EdgeInsets.only(top: 6.0),
        itemBuilder: (context, index)=>buildCategories((index),
        ),
      ),
    );
      }
 Widget buildCategories  (int index){
    return GestureDetector(
      onTap: (){
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              category[index], style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
              color: selectedIndex == index ? Colors.black87: Colors.grey, ),
            ),
            Container(
              height: 2,
              width: 30,
              margin: EdgeInsets.only(top: 3.0/4),
              color: selectedIndex == index ? Colors.black45: Colors.transparent,
            )
          ],
        ),
      )
    );
 }
}
