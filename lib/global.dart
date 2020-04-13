import 'package:flutter/material.dart';

class MyColors {
  static const pink = Color(0xfffce7d9);
  static const orange = Color(0xffff974d);
}

enum DishType { near, popular }

List<String> dishCategories = [
  'Asian',
  'French',
  'British',
  'Indian',
  'American',
  'German',
  'African'
];

class Product {
  final int id;
  final String image, price, title, desc;
  int quantity;
  bool isFavorite;
  final DishType type;
  Product({
    this.id,
    this.type,
    this.image,
    this.price,
    this.title,
    this.desc,
    this.quantity,
    this.isFavorite,
  });
}

List<Product> productsList = [
  Product(
    id: 1,
    desc:
        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatum quae odio aut repellendus totam natus laboriosam quibusdam alias ratione dolor praesentium.",
    image:
        "https://cdn.pixabay.com/photo/2016/12/11/22/41/lasagna-1900529_960_720.jpg",
    isFavorite: false,
    price: "\$52.00",
    quantity: 1,
    title: "lasagne",
    type: DishType.near,
  ),
  Product(
    id: 2,
    desc:
        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatum quae odio aut repellendus totam natus laboriosam quibusdam alias ratione dolor praesentium.",
    image:
        "https://cdn.pixabay.com/photo/2017/03/31/18/02/strawberry-dessert-2191973_960_720.jpg",
    isFavorite: false,
    price: "\$10.00",
    quantity: 1,
    title: "fraise de dessert",
    type: DishType.near,
  ),
  Product(
    id: 3,
    desc:
        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatum quae odio aut repellendus totam natus laboriosam quibusdam alias ratione dolor praesentium.",
    image:
        "https://cdn.pixabay.com/photo/2014/11/05/15/57/salmon-518032_960_720.jpg",
    isFavorite: false,
    price: "\$38.00",
    quantity: 1,
    title: "saumon",
    type: DishType.near,
  ),
  Product(
    id: 4,
    desc:
        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatum quae odio aut repellendus totam natus laboriosam quibusdam alias ratione dolor praesentium.",
    image:
        "https://cdn.pixabay.com/photo/2016/02/19/10/00/food-1209007_960_720.jpg",
    isFavorite: false,
    price: "\$30.00",
    quantity: 1,
    title: "Awesome Dish",
    type: DishType.near,
  ),
  Product(
    id: 5,
    desc:
        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatum quae odio aut repellendus totam natus laboriosam quibusdam alias ratione dolor praesentium.",
    image:
        "https://cdn.pixabay.com/photo/2016/11/22/18/58/bowl-1850039_960_720.jpg",
    isFavorite: false,
    price: "\$60.00",
    quantity: 1,
    title: "bol petit déjeuner coloré délicieux",
    type: DishType.near,
  ),
  Product(
    id: 6,
    desc:
        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatum quae odio aut repellendus totam natus laboriosam quibusdam alias ratione dolor praesentium.",
    image:
        "https://cdn.pixabay.com/photo/2014/10/19/20/59/hamburger-494706_960_720.jpg",
    isFavorite: false,
    price: "\$40.00",
    quantity: 1,
    title: "hamburger",
    type: DishType.popular,
  ),
  Product(
    id: 7,
    desc:
        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatum quae odio aut repellendus totam natus laboriosam quibusdam alias ratione dolor praesentium.",
    image:
        "https://cdn.pixabay.com/photo/2017/03/27/13/54/bread-2178874_960_720.jpg",
    isFavorite: false,
    price: "\$33.00",
    quantity: 1,
    title: "pain petit déjeuner",
    type: DishType.popular,
  ),
  Product(
    id: 8,
    desc:
        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatum quae odio aut repellendus totam natus laboriosam quibusdam alias ratione dolor praesentium.",
    image:
        "https://cdn.pixabay.com/photo/2016/02/29/00/19/cake-1227842_960_720.jpg",
    isFavorite: false,
    price: "\$34.00",
    quantity: 1,
    title: "gâteau tarte à la crème",
    type: DishType.popular,
  ),
  Product(
    id: 9,
    desc:
        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatum quae odio aut repellendus totam natus laboriosam quibusdam alias ratione dolor praesentium.",
    image:
        "https://cdn.pixabay.com/photo/2016/03/05/22/23/asian-1239271_960_720.jpg",
    isFavorite: false,
    price: "\$31.00",
    quantity: 1,
    title: "asie concombre plat poissons",
    type: DishType.popular,
  ),
];
