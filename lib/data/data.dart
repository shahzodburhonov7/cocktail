import 'package:coffee_about/models/drink.dart';

final _blackBury = Drink(
    imageUrl:"images/Blackberry Mojito.jpg",
    name: "Blackberry Mojito",
    category: "Fresh Drink",
    discount: 30,
    alcohol: 10,
    fruit: 35,
    water: 55,
    price: 25);
final _mentalCocktail = Drink(
    imageUrl:"images/Daphne's Details.jpg",
    name: "Lime and Lemon Mojito",
    category: "Fresh Drink",
    discount: 25,
    alcohol: 8,
    fruit: 28,
    water: 54,
    price: 22);
final _lemonCocktail = Drink(
    imageUrl:"images/The Bohemian.jpg",
    name: "Orange and Lime Mojito",
    category: "Fresh Drink",
    discount: 5,
    alcohol: 15,
    fruit: 28,
    water: 60,
    price: 12);
final _orangeCocktail = Drink(
    imageUrl:"images/orange.jpg",
    name: "Orange Mojito",
    category: "Fresh Drink",
    discount: 30,
    alcohol: 10,
    fruit: 35,
    water: 55,
    price: 25);
final _mangoCocktail = Drink(
    imageUrl:"images/Cactus Flower.jpg",
    name: "Cactus Flower Mojito",
    category: "Fresh Drink",
    discount: 5,
    alcohol: 15,
    fruit: 2,
    water: 25,
    price: 16);
final _strawberryCocktail = Drink(
    imageUrl:"images/The Coolest Cocktail Bars In Houston Texas.jpg",
    name: "Strawberry Mojito",
    category: "Fresh Drink",
    discount: 4,
    alcohol: 15,
    fruit: 22,
    water: 55,
    price: 35);
final List<Drink>drinks=[
  _mentalCocktail,
  _blackBury,
  _lemonCocktail,
  _orangeCocktail,
  _mangoCocktail,
  _strawberryCocktail
];
List<String>categoryList=[
  "Promotion",
  "Free Drink",
  "Happy Hour",
  "Cocktails",
];