/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';
import 'package:flutter_ui_challenges/src/widgets/network_image.dart';

class FoodDeliveryHomePage extends StatelessWidget {
  static final String path = "lib/src/pages/food/fdhome.dart";
  final List<String> sliderItems = [
    breakfast,
    burger1,
    meal,
    pancake,
  ];

  final List<Map> restaurants = [
    {
      "image": burger,
      "name": "Burger King",
      "specials": "Vegetarian, Continental"
    },
    {"image": cherry, "name": "Cherry Blossom", "specials": "Salads, Dessert"},
    {"image": cupcake, "name": "Cupcake Dream", "specials": "Fast Food"},
    {"image": frenchFries, "name": "Hungry Kids", "specials": "French Fries"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          _buildAppBar(context),
          _buildSlider(),
          _buildListSectionHeader(context, "Popular restaurants in Kathmandu"),
          _buildPopularRestaurant(),
          _buildListSectionHeader(context, "Food recommendations for you"),
          _buildRecommendedList()
        ],
      ),
    );
  }

  SliverToBoxAdapter _buildSlider() {
    return SliverToBoxAdapter(
      child: Stack(
        children: <Widget>[
          Container(
            height: 200,
            child: Swiper(
              itemCount: sliderItems.length,
              autoplay: true,
              curve: Curves.easeIn,
              itemBuilder: (BuildContext context, int index) {
                return PNetworkImage(sliderItems[index], fit: BoxFit.cover);
              },
            ),
          ),
          Container(
            height: 200,
            color: Colors.black.withOpacity(0.5),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: Text("Heavy discount on meals today only.",
                style: TextStyle(color: Colors.white)),
          )
        ],
      ),
    );
  }

  SliverAppBar _buildAppBar(BuildContext context) {
    return SliverAppBar(
      textTheme: TextTheme(
          title: Theme.of(context)
              .textTheme
              .title!
              .merge(TextStyle(color: Colors.black))),
      iconTheme: IconThemeData(color: Colors.lightGreen),
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      expandedHeight: 130,
      floating: true,
      flexibleSpace: Container(
        height: 160,
        padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(child: Text("Deliver to")),
                  IconButton(
                    icon: Icon(Icons.shopping_cart),
                    onPressed: () {},
                  )
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    hintText: "Search for restaurant or dishes",
                    suffixIcon: Icon(Icons.search)),
              )
            ],
          ),
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildListSectionHeader(
      BuildContext context, String title) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.only(left: 20.0, top: 20.0),
        child: Text(
          title,
          style: Theme.of(context).textTheme.subtitle,
        ),
      ),
    );
  }

  SliverGrid _buildPopularRestaurant() {
    return SliverGrid(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return Container(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                  height: 130.0,
                  width: double.infinity,
                  child: PNetworkImage(restaurants[index]["image"],
                      fit: BoxFit.cover)),
              SizedBox(
                height: 10.0,
              ),
              Text(restaurants[index]["name"],
                  style: Theme.of(context)
                      .textTheme
                      .title!
                      .merge(TextStyle(fontSize: 14.0))),
              SizedBox(
                height: 5.0,
              ),
              Text(restaurants[index]["specials"],
                  style: Theme.of(context)
                      .textTheme
                      .subhead!
                      .merge(TextStyle(fontSize: 12.0)))
            ],
          ),
        );
      }, childCount: restaurants.length),
    );
  }

  SliverList _buildRecommendedList() {
    return SliverList(
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return Container(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                  height: 150.0,
                  width: double.infinity,
                  child: PNetworkImage(sliderItems[index], fit: BoxFit.cover)),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Nepali breakfast",
                            style: Theme.of(context)
                                .textTheme
                                .title!
                                .merge(TextStyle(fontSize: 14.0))),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text("Vegetarian, Nepali",
                            style: Theme.of(context)
                                .textTheme
                                .subhead!
                                .merge(TextStyle(fontSize: 12.0))),
                        SizedBox(
                          height: 5.0,
                        ),
                      ],
                    ),
                  ),
                  Text("Rs. 180",
                      style: Theme.of(context)
                          .textTheme
                          .title!
                          .merge(TextStyle(fontSize: 16.0, color: Colors.red))),
                  IconButton(
                    icon: Icon(Icons.favorite_border),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.add_shopping_cart),
                    onPressed: () {},
                  )
                ],
              ),
            ],
          ),
        );
      }, childCount: sliderItems.length),
    );
  }
}
