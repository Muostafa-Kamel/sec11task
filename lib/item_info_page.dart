import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sec11task/core/app_decoration.dart';

class ItemInfoPage extends StatefulWidget {
  const ItemInfoPage({super.key, required this.title});

  final String title;

  @override
  State<ItemInfoPage> createState() => _ItemInfoPageState();
}

class _ItemInfoPageState extends State<ItemInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppDecoration.appPrimaryColor,
        title: Text(
          "Coloury",
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                    color: AppDecoration.appPrimaryColor,
                    width: 2,
                  ),
                  image: DecorationImage(
                    image: AssetImage("lib/assets/images/lap1.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              AppDecoration.spaceBetweenWidgets,
              Text(
                "Lenovo Laptop",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              AppDecoration.spaceBetweenWidgets,
              Text(
                "Price: 35.000 LE",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
        
              Text(
                """Lenovo is one of the biggest laptop manufacturers in the world, known for making laptops for students, business users, programmers, designers, and gamers.
                  Here are the main Lenovo laptop series and what each one is best for:
                  Best for: Business, programming, office work
                  """,
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(children: [
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.add_circle_outline),
                    ),
                    SizedBox(width: 5),
                    Text(
                      " 0 ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 5),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.remove_circle_outline),
                    ),
                  ],),
                  SizedBox(width: 5),
                  ElevatedButton(onPressed: () {}, child: Text('Add to Cart')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
