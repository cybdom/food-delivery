import 'package:flutter/material.dart';
import 'package:food_delivery/global.dart';

class VerticalDishCategories extends StatefulWidget {
  const VerticalDishCategories({
    Key key,
  }) : super(key: key);

  @override
  _VerticalDishCategoriesState createState() => _VerticalDishCategoriesState();
}

class _VerticalDishCategoriesState extends State<VerticalDishCategories> {
  int _active = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dishCategories.length,
      itemBuilder: (context, i) => GestureDetector(
        onTap: () {
          setState(() {
            _active = i;
          });
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(vertical: 9),
              child: RotatedBox(
                quarterTurns: -1,
                child: Text("${dishCategories[i]}"),
              ),
            ),
            if (_active == i) SizedBox(width: 3),
            if (_active == i)
              Container(
                height: 5,
                width: 5,
                decoration: BoxDecoration(
                  color: MyColors.orange,
                  shape: BoxShape.circle,
                ),
              )
          ],
        ),
      ),
    );
  }
}
