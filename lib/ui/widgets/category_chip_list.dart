import 'package:flutter/material.dart';
import 'package:food_delivery/global.dart';

class CategoryChipList extends StatefulWidget {
  const CategoryChipList({
    Key key,
  }) : super(key: key);

  @override
  _CategoryChipListState createState() => _CategoryChipListState();
}

class _CategoryChipListState extends State<CategoryChipList> {
  int _active = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dishCategories.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, i) => Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _active = i;
            });
          },
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 9,
            ),
            margin: const EdgeInsets.only(right: 9),
            decoration: BoxDecoration(
              color: i == _active ? MyColors.pink : null,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(15.0),
                bottomLeft: Radius.circular(15.0),
              ),
            ),
            child: Text(
              "${dishCategories[i]}",
              style: Theme.of(context).textTheme.body2.copyWith(
                    color: i == _active ? MyColors.orange : null,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
