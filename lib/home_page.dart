import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sec11task/core/app_decoration.dart';
import 'package:sec11task/core/item_card_info.dart';
import 'package:sec11task/item_info_page.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

  int counter=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter=0;
  late final String itemName;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: AppDecoration.appPrimaryColor,
        leading: Icon(Icons.arrow_back),
        title: Text("Laptop Department"),
        centerTitle: true,
        actions: [
          Icon(Icons.shopping_cart),
          SizedBox(width: 10),
          Icon(Icons.search),
          SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  child: ItemCardInfo(
                    itemImagePath: 'lib/assets/images/lap1.jpg',
                    itemPrice: "Dell Latitude",
                    itemName: "35.000 LE",
                    itemCounter: counter,
                    addItemOnPressed: (){
                      setState(() {
                        counter++;
                      });
                    },
                    removeItemOnPressed: (){
                      setState(() {
                        counter--;
                      });
                    },
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> ItemInfoPage(title: 'title')));
                  },
                ),
                AppDecoration.spaceBetweenWidgets,
                ItemCardInfo(
                  itemImagePath: 'lib/assets/images/lap2.jpg',
                  itemPrice: "MAC Laptop",
                  itemName: '90.000 LE',
                  itemCounter: counter,

                  addItemOnPressed: (){
                    setState(() {
                      counter++;
                    });
                  },
                  removeItemOnPressed: (){
                    setState(() {
                      counter--;
                    });
                  },
                ),
                AppDecoration.spaceBetweenWidgets,
              ],
            ),
            AppDecoration.spaceBetweenWidgets,
            Row(
              children: [
                ItemCardInfo(
                  itemImagePath: 'lib/assets/images/lap3.jpg',
                  itemPrice: "HP Elite Book",
                  itemName: "35.000 LE",
                  itemCounter: counter,
                  addItemOnPressed: (){
                    setState(() {
                      counter++;
                    });
                  },
                  removeItemOnPressed: (){
                    setState(() {
                      counter--;
                    });
                  },
                ),
                AppDecoration.spaceBetweenWidgets,
                ItemCardInfo(
                  itemImagePath: 'lib/assets/images/lap4.jpg',
                  itemPrice: "Think Pad",
                  itemName: '90.000 LE',
                  itemCounter: counter,
                  addItemOnPressed: (){
                    setState(() {
                      counter++;
                    });
                  },
                  removeItemOnPressed: (){
                    setState(() {
                      counter--;
                    });
                  },
                ),
                AppDecoration.spaceBetweenWidgets,
              ],
            ),
            AppDecoration.spaceBetweenWidgets,
            Row(
              children: [
                ItemCardInfo(
                  itemImagePath: 'lib/assets/images/lap1.jpg',
                  itemPrice: "Lenovo",
                  itemName: "35.000 LE",
                  itemCounter: counter,
                  addItemOnPressed: (){
                    setState(() {
                      counter++;
                    });
                  },
                  removeItemOnPressed: (){
                    setState(() {
                      counter--;
                    });
                  },
                ),
                AppDecoration.spaceBetweenWidgets,
                ItemCardInfo(
                  itemImagePath: 'lib/assets/images/lap2.jpg',
                  itemPrice: "MAC Laptop",
                  itemName: '90.000 LE',
                  itemCounter: counter,
                  addItemOnPressed: (){
                    setState(() {
                      counter++;
                    });
                  },
                  removeItemOnPressed: (){
                    setState(() {
                      counter--;
                    });
                  },
                ),
                AppDecoration.spaceBetweenWidgets,
              ],
            ),
            AppDecoration.spaceBetweenWidgets,
            Row(
              children: [
                ItemCardInfo(
                  itemImagePath: 'lib/assets/images/lap1.jpg',
                  itemPrice: "Lenovo",
                  itemName: "35.000 LE",
                  itemCounter: counter,
                  addItemOnPressed: (){
                    setState(() {
                      counter++;
                    });
                  },
                  removeItemOnPressed: (){
                    setState(() {
                      counter--;
                    });
                  },
                ),
                AppDecoration.spaceBetweenWidgets,
                ItemCardInfo(
                  itemImagePath: 'lib/assets/images/lap2.jpg',
                  itemPrice: "MAC Laptop",
                  itemName: '90.000 LE',
                  itemCounter: counter,
                  addItemOnPressed: (){
                    setState(() {
                      counter++;
                    });
                  },
                  removeItemOnPressed: (){
                    setState(() {
                      counter--;
                    });
                  },
                ),
                AppDecoration.spaceBetweenWidgets,
              ],
            ),
          ],
        ),
      ),
    );
  }
}

