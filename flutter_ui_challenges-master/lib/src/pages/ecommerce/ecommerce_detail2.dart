/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */
  
import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';
import 'package:flutter_ui_challenges/src/widgets/network_image.dart';

class EcommerceDetailTwoPage extends StatelessWidget {
  static final String path = "lib/src/pages/ecommerce/ecommerce_detail2.dart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          ListView(
            children: <Widget>[
              PNetworkImage(images[4]),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: buildDropdownButton(['Black','Blue','Red'],'Black')
                    ),
                    Expanded(
                      child: buildDropdownButton(['S','M','XL','XXL'],'XXL')
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                child: Text("Kapka Valour", style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w500
                ),),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 20.0,),
                        Icon(Icons.star, color: Colors.yellow),
                        Icon(Icons.star, color: Colors.yellow),
                        Icon(Icons.star, color: Colors.yellow),
                        Icon(Icons.star, color: Colors.yellow),
                        Icon(Icons.star, color: Colors.yellow),
                        SizedBox(width: 5.0,),
                        Text("5.0 stars", style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14.0
                        ))
                      ],
                    )
                  ),
                  Text("\$5500", style: TextStyle(
                    color: Colors.red,
                    fontSize: 30.0,
                  )),
                  SizedBox(width: 20.0,),
                ],
              ),
              Container(padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0) ,
                child: Text("Description",style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w400
              ))),
              Container(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
                child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dignissim erat in accumsan tempus. Mauris congue luctus neque, in semper purus maximus iaculis. Donec et eleifend quam, a sollicitudin magna.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.grey.shade600
                    ),
                  ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              AppBar(
                iconTheme: IconThemeData(
                  color: Colors.black
                ),
                brightness: Brightness.light,
                backgroundColor: Colors.transparent,
                elevation: 0,
                title: Text("Back to Shopping", style: TextStyle(color: Colors.black),),
                actions: <Widget>[
                  IconButton(icon: Icon(Icons.favorite_border), onPressed: (){},)
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Expanded(
                    child: MaterialButton(
                      color: Colors.deepOrange,
                      elevation: 0,
                      onPressed: (){},
                      child: Container(
                        padding: EdgeInsets.all(15.0),
                        child: Text("Buy", textAlign: TextAlign.center,style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w500
                        ),),
                      ),
                    ),
                  ),
                  Expanded(
                    child: MaterialButton(
                      color: Colors.black54,
                      elevation: 0,
                      onPressed: (){},
                      child: Container(
                        padding: EdgeInsets.all(15.0),
                        child: Text("Add a bag", textAlign: TextAlign.center,style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w500
                        ),),
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget buildDropdownButton(List<String> items, String selectedValue) {
    return DropdownButton<String>(
      isExpanded: true,
      value: selectedValue,
      onChanged: (_) {},
      items: items.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}