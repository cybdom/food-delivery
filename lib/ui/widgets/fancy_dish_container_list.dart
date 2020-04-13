import 'package:flutter/material.dart';
import 'package:food_delivery/global.dart';
import 'package:food_delivery/ui/screens/details.dart';

class FancyDishContainerList extends StatefulWidget {
  final List<Product> content;

  const FancyDishContainerList({Key key, @required this.content})
      : super(key: key);
  @override
  _FancyDishContainerListState createState() => _FancyDishContainerListState();
}

class _FancyDishContainerListState extends State<FancyDishContainerList> {
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: PageController(viewportFraction: .91),
      itemCount: widget.content.length,
      itemBuilder: (context, i) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(data: widget.content[i]),
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: FractionallySizedBox(
                    widthFactor: .85,
                    heightFactor: .90,
                    alignment: Alignment.bottomRight,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(9.0),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 5.0,
                              color: Colors.black.withOpacity(.09),
                              offset: Offset(0, 3))
                        ],
                      ),
                      child: FractionallySizedBox(
                        heightFactor: .65,
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "${widget.content[i].price}",
                                style: Theme.of(context)
                                    .textTheme
                                    .subhead
                                    .copyWith(color: MyColors.orange),
                              ),
                              FittedBox(
                                child: Text(
                                  "${widget.content[i].title}",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline
                                      .copyWith(fontWeight: FontWeight.bold),
                                  maxLines: 2,
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  "${widget.content[i].desc}",
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: FractionallySizedBox(
                    widthFactor: .45,
                    heightFactor: .45,
                    alignment: Alignment.topLeft,
                    child: Center(
                      child: Hero(
                        tag: widget.content[i].id,
                        child: CircleAvatar(
                          backgroundImage:
                              NetworkImage(widget.content[i].image),
                          radius: 35,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 35,
                  right: 7,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        widget.content[i].isFavorite =
                            !widget.content[i].isFavorite;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(9.0),
                      decoration: BoxDecoration(
                        color: MyColors.pink,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15.0),
                          bottomLeft: Radius.circular(15.0),
                        ),
                      ),
                      child: Icon(
                        Icons.favorite,
                        size: 13,
                        color: widget.content[i].isFavorite
                            ? MyColors.orange
                            : Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
