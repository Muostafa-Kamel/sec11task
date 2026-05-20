import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_decoration.dart';

class ItemCardInfo extends StatelessWidget {
  const ItemCardInfo({
    super.key,
    required this.itemImagePath,
    required this.itemName,
    required this.itemPrice,
    required this.itemCounter,
    required this.addItemOnPressed,
    required this.removeItemOnPressed,
    // required this.itemTitle,
  });

  final String itemImagePath;
  final String itemPrice;
  final String itemName;
  final int itemCounter;
  final VoidCallback addItemOnPressed;
  final VoidCallback removeItemOnPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: Container(
        width: 250,
        height: 250,
        decoration: BoxDecoration(
          border: BoxBorder.all(color: Colors.yellowAccent),
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(colors: [Colors.white24, Colors.white38]),
        ),
        child: Column(
          children: [
            Image(image: AssetImage(itemImagePath), height: 150, width: 250),
            AppDecoration.spaceBetweenWidgets,
            Text(itemPrice, style: AppDecoration.appTextStyle),
            AppDecoration.spaceBetweenWidgets,
            Text(itemName, style: AppDecoration.appTextStyle),
            AppDecoration.spaceBetweenWidgets,
            Row(
              children: [
                IconButton(
                  onPressed: addItemOnPressed,
                  icon: Icon(Icons.add_circle_outline,color: AppDecoration.appPrimaryColor,),
                ),
                SizedBox(width: 5),
                Text(
                  "$itemCounter",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 5),
                IconButton(
                  onPressed: removeItemOnPressed,
                  icon: Icon(Icons.remove_circle_outline,color: AppDecoration.appPrimaryColor,),
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppDecoration.appPrimaryColor,
                  ),
                  child: Text('Add to Cart'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
