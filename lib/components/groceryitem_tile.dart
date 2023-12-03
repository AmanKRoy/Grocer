import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GroceryItemTile extends StatefulWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;
  // ignore: prefer_typing_uninitialized_variables
  final color;
  void Function()? onPressed;

  GroceryItemTile({
    super.key,
    required this.imagePath,
    required this.color,
    required this.itemName,
    required this.itemPrice,
    required this.onPressed});

  @override
  State<GroceryItemTile> createState() => _GroceryItemTileState();
}

class _GroceryItemTileState extends State<GroceryItemTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: widget.color[100],
          borderRadius: BorderRadius.circular(12)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(widget.imagePath,
            height: 64
            ),
            Text(widget.itemName),

            MaterialButton(onPressed: widget.onPressed,
            color: widget.color[800],
            child: Text(
              '\$' + widget.itemPrice,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
            ),)
          ],
        ),
      ),
    );
  }
}