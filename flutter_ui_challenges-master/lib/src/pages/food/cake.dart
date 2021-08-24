/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */
  
import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';
import 'package:flutter_ui_challenges/src/widgets/network_image.dart';
class CakePage extends StatelessWidget {
  static final String path = "lib/src/pages/food/cake.dart";
  @override
  Widget build(BuildContext context){
    final Color primary = Color(0xff7b7517);
    final Color background = Color(0xff2f2f4f);
    final Color overlay = Color(0xff212129);
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.favorite_border, color: Colors.white,),
            onPressed: (){},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Text("Fruits Cake", style: Theme.of(context).textTheme.title!.copyWith(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.normal
              ),),
              SizedBox(height: 10.0),
              Text("strawberry & kiwi special", style: TextStyle(
                color: primary,
                fontSize: 16.0
              ),),
              
              Container(
                height: 60.0,
                child: ListView(
                  padding: EdgeInsets.all(8.0),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    SizedBox(width: 20.0),
                    ChoiceChip(
                      labelPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      label: Text("1 Kg", style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),),
                      backgroundColor: background,
                      selected: true,
                      onSelected: (val){},
                      selectedColor: primary,
                    ),
                    SizedBox(width: 20.0),
                    ChoiceChip(
                      labelPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      label: Text("2 Kg", style: TextStyle(
                        color: primary,
                        fontWeight: FontWeight.bold
                      ),),
                      backgroundColor: background,
                      selected: false,
                      onSelected: (val){},
                      selectedColor: primary,
                    ),
                    SizedBox(width: 20.0),
                    ChoiceChip(
                      labelPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      label: Text("3 Kg", style: TextStyle(
                        color: primary,
                        fontWeight: FontWeight.bold
                      ),),
                      backgroundColor: background,
                      selected: false,
                      onSelected: (val){},
                      selectedColor: primary,
                    ),
                    SizedBox(width: 20.0),
                    ChoiceChip(
                      labelPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      label: Text("4 Kg", style: TextStyle(
                        color: primary,
                        fontWeight: FontWeight.bold
                      ),),
                      backgroundColor: background,
                      selected: false,
                      onSelected: (val){},
                      selectedColor: primary,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                height: 180,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: PNetworkImage(cake),
                    ),
                    Column(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.add,color: Colors.white,),
                          onPressed: (){},
                        ),
                        CircleAvatar(
                          child: Text("1"),
                          backgroundColor: primary,
                        ),
                        IconButton(
                          icon: Icon(Icons.remove,color: Colors.white,),
                          onPressed: (){},
                        ),
                      ],
                    ),
                    SizedBox(width: 10.0),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.only(right: 20.0),
                width: double.infinity,   
                child: Text.rich(TextSpan(
                  children: [
                    TextSpan(text: "\$84.", style: TextStyle(
                      color: Colors.white,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold
                    ),),
                    TextSpan(text: "99", style: TextStyle(
                      color: Colors.white
                    ),)
                  ]
                )
              )),
              SizedBox(height: 20.0),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16.0),
                decoration: BoxDecoration(
                  color: overlay,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(child: Column(
                      children: <Widget>[
                        SizedBox(height: 20.0),
                        PNetworkImage(eggs),
                        SizedBox(height: 10.0),
                        Text("4 Eggs", style: TextStyle(
                          color: Colors.white
                        ),)
                      ],
                    ),),
                    VerticalDivider(color: Colors.grey,),
                    Expanded(child: Column(
                      children: <Widget>[
                        SizedBox(height: 10.0),
                        PNetworkImage(vanilla),
                        SizedBox(height: 10.0),
                        Text("2 tsp vanilla", style: TextStyle(
                          color: Colors.white
                        ),)
                      ],
                    ),),
                    VerticalDivider(color: Colors.grey,),
                    Expanded(child: Column(
                      children: <Widget>[
                        SizedBox(height: 20.0),
                        PNetworkImage(sugar),
                        SizedBox(height: 10.0),
                        Text("1 cup sugar", style: TextStyle(
                          color: Colors.white
                        ),)
                      ],
                    ),),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                child: Row(
                  children: <Widget>[
                    SizedBox(width: 20.0),
                    PNetworkImage(map),
                    SizedBox(width: 20.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("DELIVERY", style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0
                          ),),
                          Text("45, Amarlands", style: TextStyle(
                            color: Colors.grey.shade300
                          ),),
                          Text("Nr. Hamer Road, London",style: TextStyle(
                            color: Colors.grey.shade300
                          ),)
                        ]
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  SizedBox(width: 20.0),
                  Text("Ratings", style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0
                  ),),
                  SizedBox(width: 20.0),
                  Icon(Icons.star, color: Colors.yellow,),
                  Icon(Icons.star, color: Colors.yellow,),
                  Icon(Icons.star, color: Colors.yellow,),
                  Icon(Icons.star, color: Colors.yellow,),
                  Icon(Icons.star_half, color: Colors.yellow,),
                  Text("(55)", style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16.0
                  ),)
                ],
              ),
              SizedBox(height: 20.0),
              RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0)
                ),
                padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 8.0),
                onPressed: (){},
                child: Text("Make order now", style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  letterSpacing: 1.50,
                  fontWeight: FontWeight.normal
                ),),
                color: primary,
              ),
              SizedBox(height: 20.0,)
            ],
          ),
        ),
      ),
    );
  }
}