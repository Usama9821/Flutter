/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */
  
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';
import 'package:flutter_ui_challenges/src/pages/grocery/gwidgets/glistitem3.dart';


class GroceryCartTabView extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(10.0),
              children: <Widget>[
                GroceryListItemThree(
                  image: pineapple,
                  subtitle: "4 in a pack",
                  title: "Pineapple",
                ),
                GroceryListItemThree(
                  image: cabbage,
                  subtitle: "1 kg",
                  title: "cabbage",
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0,),
          _buildTotals()
        ],
      );
    }

  Widget _buildTotals() {
    return ClipPath(
      clipper: OvalTopBorderClipper(),
      child: Container(
            height: 180,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(blurRadius: 5.0,color: Colors.grey.shade700,spreadRadius: 80.0),
              ],
              color: Colors.white,
            ),
            padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 40.0, bottom: 10.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Subtotal"),
                    Text("Rs. 1500"),
                  ],
                ),
                SizedBox(height: 10.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Delivery fee"),
                    Text("Rs. 100"),
                  ],
                ),
                SizedBox(height: 10.0,),  
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Total"),
                    Text("Rs. 1600"),
                  ],
                ),
                SizedBox(height: 10.0,),
                RaisedButton(
                  color: Colors.green,
                  onPressed: (){},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text("Continue to Checkout", style: TextStyle(color: Colors.white)),
                      Text("Rs. 1600", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                )
              ],
            ),
          ),
    );
  }
}