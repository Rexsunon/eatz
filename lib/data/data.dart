import 'package:eatz/models/dish.dart';
import 'package:eatz/models/category.dart';
import 'package:eatz/utils/assets.dart';

List<Category> categories = [
  Category(icon: Assets.steak, label: 'Steak'),
  Category(icon: Assets.sushi, label: 'Sushi'),
  Category(icon: Assets.ramen, label: 'Ramen'),
  Category(icon: Assets.burger, label: 'Burger'),
  Category(icon: Assets.saladSvg, label: 'Salad'),
  Category(icon: Assets.rice, label: 'Rice'),
];

List<Dish> dishes = [
  Dish(name: 'Fried Shrimps', image: Assets.friedShrimps, cook: 'Rex K', rating: 4.0, price: 20, description: 'description'),
  Dish(name: 'Salad & Steak', image: Assets.saladSteak, cook: "BuBu's kitchen", rating: 5.0, price: 50, description: 'description'),
  Dish(name: 'Burger', image: Assets.burger_1, cook: 'JideGuru', rating: 4.9, price: 25, description: 'description'),
  Dish(name: 'Burger Pro', image: Assets.burger_2, cook: 'JideGuru', rating: 5.0, price: 30, description: 'description'),
  Dish(name: 'Salad', image: Assets.salad, cook: "BuBu's kitchen", rating: 4.8, price: 25, description: 'description'),
  Dish(name: 'Salad & Steak', image: Assets.saladSteak_2, cook: 'Rex K', rating: 5.0, price: 30, description: 'description'),
  Dish(name: 'Beef Sandwiches', image: Assets.beefSandwiches, cook: 'Rex K', rating: 5.0, price: 35, description: 'description'),
];
