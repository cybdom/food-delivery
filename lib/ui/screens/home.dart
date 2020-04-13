import 'package:flutter/material.dart';
import 'package:food_delivery/global.dart';
import 'package:food_delivery/ui/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 45,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 9.0),
                height: double.infinity,
                decoration: BoxDecoration(
                  color: MyColors.pink,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25.0),
                    bottomRight: Radius.circular(25.0),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    IconButton(icon: Icon(Icons.apps), onPressed: () {}),
                    IconButton(icon: Icon(Icons.search), onPressed: () {}),
                    Expanded(
                      child: VerticalDishCategories(),
                    ),
                    IconButton(
                        icon: Icon(Icons.shopping_basket), onPressed: () {}),
                  ],
                ),
              ),
            ),
            SizedBox(width: 5),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 9),
                children: <Widget>[
                  Text(
                    "Food Delivery",
                    style: Theme.of(context)
                        .textTheme
                        .headline
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 51,
                    child: CategoryChipList(),
                  ),
                  Text(
                    "Near You",
                    style: Theme.of(context).textTheme.subtitle,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 3,
                    child: FancyDishContainerList(
                      content: productsList
                          .where((product) => product.type == DishType.near)
                          .toList(),
                    ),
                  ),
                  Text(
                    "Popular",
                    style: Theme.of(context).textTheme.subtitle,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 3,
                    child: FancyDishContainerList(
                      content: productsList
                          .where((product) => product.type == DishType.popular)
                          .toList(),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: RaisedButton(
                      color: MyColors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Text(
                        "View All",
                        style: Theme.of(context)
                            .textTheme
                            .button
                            .copyWith(color: Colors.white),
                      ),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
