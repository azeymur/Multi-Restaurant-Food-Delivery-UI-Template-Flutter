import 'package:food_delivery_multi_template/model/choice.dart';
import 'package:food_delivery_multi_template/model/choice_item.dart';
import 'package:food_delivery_multi_template/model/food_menu_item.dart';

class MenuHelper {
  /*
         * croissant
         * dessert
         * eclair
         * cafee
         * burger
         * chicken
         * pasta
         * meat
         * salad
         * beverage
         */

  // croissant

  static FoodMenuItem newCroissantPlain(double price) {
    return FoodMenuItem(
      name: "Plain Croissant",
      description: "Plain croissant with butter",
      image: "mi_plain_croissant",
      price: price,
      choices: const [],
    );
  }

  static FoodMenuItem newCroissantAlmond(double price) {
    return FoodMenuItem(
      name: "Double Baked Almond Croissant",
      description: "Croissant with almond frangipane filling",
      image: "mi_plain_croissant",
      price: price,
      choices: const [],
    );
  }

  static FoodMenuItem newCroissantRocher(double price) {
    return FoodMenuItem(
      name: "Rocher Croissant",
      description: "Rocher chocolate covered croissant",
      image: "mi_plain_croissant",
      price: price,
      choices: const [],
    );
  }

  // croissant sandwiches

  static FoodMenuItem newCroissantSandwich(double price) {
    return FoodMenuItem(
      name: "3 Cheese Croissant Sandwich",
      description: "Cheddar, lettuce, tomato",
      image: "mi_cheese_croissant_sandwich",
      price: price,
      choices: const [
        Removables(
          name: "Ingredients",
          choiceItems: [
            ChoiceItem(name: "Tomato"),
            ChoiceItem(name: "Lettuce"),
          ],
        ),
      ],
    );
  }

  static FoodMenuItem newCroissantAvocadoSandwich(double price) {
    return FoodMenuItem(
      name: "3 Cheese Avocado Croissant Sandwich",
      description: "Cheddar, avacado, lettuce, tomato",
      image: "mi_cheese_avacado_croissant_sandwich",
      price: price,
      choices: const [
        Removables(
          name: "Ingredients",
          choiceItems: [
            ChoiceItem(name: "Tomato"),
            ChoiceItem(name: "Lettuce"),
            ChoiceItem(name: "Black Cumin"),
          ],
        ),
      ],
    );
  }

  static FoodMenuItem newCroissantEntrecoteSandwich(double price) {
    return FoodMenuItem(
      name: "3 Cheese Entrecote Croissant Sandwich",
      description: "Cheddar, entrecote, lettuce, tomato",
      image: "mi_cheese_entrecote_croissant_sandwich",
      price: price,
      choices: const [
        Removables(
          name: "Ingredients",
          choiceItems: [
            ChoiceItem(name: "Tomato"),
            ChoiceItem(name: "Lettuce"),
          ],
        ),
      ],
    );
  }

  // dessert

  static FoodMenuItem newDessertSaltedCaramelBrownie(double price) {
    return FoodMenuItem(
      name: "Salted Caramel Brownie",
      description: "70% dark chocolate, salted caramel brownie.",
      image: "mi_salted_caramel_brownie",
      price: price,
      choices: const [],
    );
  }

  static FoodMenuItem newDessertGingerCarrotCake(double price) {
    return FoodMenuItem(
      name: "Ginger Carrot Cake",
      description: "Carrot cake with ginger",
      image: "mi_ginger_carrot_cake",
      price: price,
      choices: const [],
    );
  }

  static FoodMenuItem newDessertSupangle(double price) {
    return FoodMenuItem(
      name: "Supangle",
      description:
          "Its bottom layer includes pieces of cake and it is often garnished with pistachio or coconut, and chocolate chips.",
      image: "mi_supangle",
      price: price,
      choices: const [],
    );
  }

  static FoodMenuItem newDessertProfiterole(double price) {
    return FoodMenuItem(
      name: "Profiterole",
      description:
          "Small hollow pastry typically filled with cream and covered with chocolate sauce.",
      image: "mi_profiterole",
      price: price,
      choices: const [],
    );
  }

  static FoodMenuItem newDessertLemonTart(double price) {
    return FoodMenuItem(
      name: "Lemon Tart",
      description: "Pastry shell with a lemon flavored filling.",
      image: "mi_lemon_tart",
      price: price,
      choices: const [],
    );
  }

  static FoodMenuItem newDessertMosaicCake(double price) {
    return FoodMenuItem(
      name: "Mosaic Cake",
      description: "",
      image: "mi_mosaic_cake",
      price: price,
      choices: const [],
    );
  }

  static FoodMenuItem newDessertDevilsCake(double price) {
    return FoodMenuItem(
      name: "Devil's Cake",
      description: "",
      image: "mi_devils_cake",
      price: price,
      choices: const [],
    );
  }

  static FoodMenuItem newDessertCheeseCake(double price) {
    return FoodMenuItem(
      name: "Cheese Cake",
      description: "",
      image: "mi_cheese_cake",
      price: price,
      choices: const [],
    );
  }

  static FoodMenuItem newDessertMonoCake(double price) {
    return FoodMenuItem(
      name: "Mono Cake",
      description: "",
      image: "mi_mono_cake",
      price: price,
      choices: const [],
    );
  }

  // eclair

  static FoodMenuItem newEclairClassic(double price) {
    return FoodMenuItem(
      name: "Classic Eclair",
      description: "Choux, vanilla cream, chocolate sauce",
      image: "mi_classic_eclair",
      price: price,
      choices: const [],
    );
  }

  static FoodMenuItem newEclairSnickers(double price) {
    return FoodMenuItem(
      name: "Snickers Eclair",
      description:
          "Choux, vanilla cream, covered in milk chocolate, roasted peanuts",
      image: "mi_snickers_eclair",
      price: price,
      choices: const [],
    );
  }

  static FoodMenuItem newEclairRocher(double price) {
    return FoodMenuItem(
      name: "Rocher Eclair",
      description: "Choux, vanilla cream, covered in rocher chocolate",
      image: "mi_snickers_eclair",
      price: price,
      choices: const [],
    );
  }

  // cafee

  static FoodMenuItem newCafeeLatte(double price) {
    return FoodMenuItem(
      name: "Caffe Latte",
      description: "",
      image: "mi_caffe_latte",
      price: price,
      choices: const [],
    );
  }

  static FoodMenuItem newCafeeCappucino(double price) {
    return FoodMenuItem(
      name: "Cappucino",
      description: "",
      image: "mi_cappucino",
      price: price,
      choices: const [],
    );
  }

  static FoodMenuItem newCafeeAmericano(double price) {
    return FoodMenuItem(
      name: "Americano",
      description: "",
      image: "mi_americano",
      price: price,
      choices: const [],
    );
  }

  static FoodMenuItem newCafeeIceAmericano(double price) {
    return FoodMenuItem(
        name: "Ice Americano",
        description: "",
        image: "mi_ice_americano",
        price: price,
        choices: const []);
  }

  // burger

  static FoodMenuItem newBurgerClassicMenu(double price) {
    return FoodMenuItem(
      name: "Classic Burger Menu",
      description: "Burger, Potato, Beverage",
      image: "mi_burger_menu",
      price: price,
      choices: const [
        Removables(
          name: "Ingredients",
          choiceItems: [
            ChoiceItem(name: "Onion"),
            ChoiceItem(name: "Pickles"),
            ChoiceItem(name: "Tomato"),
            ChoiceItem(name: "Mayonnaise"),
            ChoiceItem(name: "Lettuce"),
          ],
        ),
        Options(
          name: "Hamburger Bread",
          choiceItems: [
            ChoiceItem(name: "Classic", isDefault: true),
            ChoiceItem(name: "Bread with Sesame", price: 1.0),
          ],
        ),
        Options(
          name: "Potato",
          choiceItems: [
            ChoiceItem(name: "Apple slice", isDefault: true),
            ChoiceItem(name: "Finger"),
          ],
        ),
        Options(
          name: "Beverage",
          choiceItems: [
            ChoiceItem(name: "Cola 33cl", isDefault: true),
            ChoiceItem(name: "Sprite 33cl"),
            ChoiceItem(name: "Fanta 33cl"),
            ChoiceItem(name: "Fruko 33cl"),
            ChoiceItem(name: "Cappy 33cl"),
            ChoiceItem(name: "7up 33cl"),
          ],
        ),
      ],
    );
  }

  static FoodMenuItem newBurgerClassicDoubleMenu(double price) {
    return FoodMenuItem(
      name: "Classic Double Burger Menu",
      description: "Burger, Potato, Beverage",
      image: "mi_burger_menu",
      price: price,
      choices: const [
        Options(
          name: "Ingredients",
          choiceItems: [
            ChoiceItem(name: "Onion"),
            ChoiceItem(name: "Pickles"),
            ChoiceItem(name: "Tomato"),
            ChoiceItem(name: "Mayonnaise"),
            ChoiceItem(name: "Lettuce"),
          ],
        ),
        Options(
          name: "Hamburger Bread",
          choiceItems: [
            ChoiceItem(name: "Classic", isDefault: true),
            ChoiceItem(name: "Bread with Sesame", price: 1.0),
          ],
        ),
        Options(
          name: "Potato",
          choiceItems: [
            ChoiceItem(name: "Apple slice", isDefault: true),
            ChoiceItem(name: "Finger"),
          ],
        ),
        Options(
          name: "Beverage",
          choiceItems: [
            ChoiceItem(name: "Cola 33cl", isDefault: true),
            ChoiceItem(name: "Sprite 33cl"),
            ChoiceItem(name: "Fanta 33cl"),
            ChoiceItem(name: "Cappy 33cl"),
            ChoiceItem(name: "7up 33cl"),
          ],
        ),
      ],
    );
  }

  static FoodMenuItem newBurgerChickenMenu(double price) {
    return FoodMenuItem(
      name: "Chicken Burger Menu",
      description: "Chicken, bread, mayonnaise, lettuce",
      image: "mi_burger_menu",
      price: price,
      choices: const [
        Removables(
          name: "Ingredients",
          choiceItems: [
            ChoiceItem(name: "Mayonnaise"),
            ChoiceItem(name: "Lettuce"),
          ],
        ),
        Options(
          name: "Hamburger Bread",
          choiceItems: [
            ChoiceItem(name: "Classic", isDefault: true),
            ChoiceItem(name: "Bread with Sesame", price: 1.0),
          ],
        ),
        Options(
          name: "Potato",
          choiceItems: [
            ChoiceItem(name: "Apple slice", isDefault: true),
            ChoiceItem(name: "Finger"),
          ],
        ),
        Options(
          name: "Beverage",
          choiceItems: [
            ChoiceItem(name: "Cola 33cl", isDefault: true),
            ChoiceItem(name: "Sprite 33cl"),
            ChoiceItem(name: "Fanta 33cl"),
            ChoiceItem(name: "Fruko 33cl"),
            ChoiceItem(name: "Cappy 33cl"),
            ChoiceItem(name: "7up 33cl"),
          ],
        ),
      ],
    );
  }

  static FoodMenuItem newBurgerDoubleChickenMenu(double price) {
    return FoodMenuItem(
      name: "Double Chicken Burger Menu",
      description: "Chicken, bread, mayonnaise, lettuce",
      image: "mi_burger_menu",
      price: price,
      choices: const [
        Removables(
          name: "Ingredients",
          choiceItems: [
            ChoiceItem(name: "Mayonnaise"),
            ChoiceItem(name: "Lettuce"),
          ],
        ),
        Options(
          name: "Hamburger Bread",
          choiceItems: [
            ChoiceItem(name: "Classic", isDefault: true),
            ChoiceItem(name: "Bread with Sesame", price: 1.0),
          ],
        ),
        Options(
          name: "Potato",
          choiceItems: [
            ChoiceItem(name: "Apple slice", isDefault: true),
            ChoiceItem(name: "Finger"),
          ],
        ),
        Options(
          name: "Beverage",
          choiceItems: [
            ChoiceItem(name: "Cola 33cl", isDefault: true),
            ChoiceItem(name: "Sprite 33cl"),
            ChoiceItem(name: "Fanta 33cl"),
            ChoiceItem(name: "Fruko 33cl"),
            ChoiceItem(name: "Cappy 33cl"),
            ChoiceItem(name: "7up 33cl"),
          ],
        ),
      ],
    );
  }

  static FoodMenuItem newBurgerClassic(double price) {
    return FoodMenuItem(
      name: "Classic Burger",
      description:
          "Beef, bread, pickles, ketchup, mayonnaise, lettuce, tomato, onion.",
      image: "mi_burger",
      price: price,
      choices: const [
        Removables(
          name: "Ingredients",
          choiceItems: [
            ChoiceItem(name: "Onion"),
            ChoiceItem(name: "Pickles"),
            ChoiceItem(name: "Tomato"),
            ChoiceItem(name: "Mayonnaise"),
            ChoiceItem(name: "Lettuce"),
          ],
        ),
        Options(
          name: "Hamburger Bread",
          choiceItems: [
            ChoiceItem(name: "Classic", isDefault: true),
            ChoiceItem(name: "Bread with Sesame", price: 1.0),
          ],
        ),
      ],
    );
  }

  static FoodMenuItem newBurgerClassicDouble(double price) {
    return FoodMenuItem(
      name: "Double Burger",
      description:
          "Beef, bread, pickles, ketchup, mayonnaise, lettuce, tomato, onion.",
      image: "mi_double_burger",
      price: price,
      choices: const [
        Removables(
          name: "Ingredients",
          choiceItems: [
            ChoiceItem(name: "Onion"),
            ChoiceItem(name: "Pickles"),
            ChoiceItem(name: "Tomato"),
            ChoiceItem(name: "Mayonnaise"),
            ChoiceItem(name: "Lettuce"),
          ],
        ),
        Options(
          name: "Hamburger Bread",
          choiceItems: [
            ChoiceItem(name: "Classic", isDefault: true),
            ChoiceItem(name: "Bread with Sesame", price: 1.0),
          ],
        ),
      ],
    );
  }

  static FoodMenuItem newBurgerChicken(double price) {
    return FoodMenuItem(
      name: "Chicken Burger",
      description: "Chicken, bread, mayonnaise, lettuce",
      image: "mi_chicken_burger",
      price: price,
      choices: const [
        Removables(
          name: "Ingredients",
          choiceItems: [
            ChoiceItem(name: "Mayonnaise"),
            ChoiceItem(name: "Lettuce"),
          ],
        ),
        Options(
          name: "Hamburger Bread",
          choiceItems: [
            ChoiceItem(name: "Classic", isDefault: true),
            ChoiceItem(name: "Bread with Sesame", price: 1.0),
          ],
        ),
      ],
    );
  }

  static FoodMenuItem newBurgerDoubleChicken(double price) {
    return FoodMenuItem(
      name: "Double Chicken Burger",
      description: "Chicken, bread, mayonnaise, lettuce.",
      image: "mi_double_chicken_burger",
      price: price,
      choices: const [
        Removables(
          name: "Ingredients",
          choiceItems: [
            ChoiceItem(name: "Mayonnaise"),
            ChoiceItem(name: "Lettuce"),
          ],
        ),
        Options(
          name: "Hamburger Bread",
          choiceItems: [
            ChoiceItem(name: "Classic", isDefault: true),
            ChoiceItem(name: "Bread with Sesame", price: 1.0),
          ],
        ),
      ],
    );
  }

  // chicken

  static FoodMenuItem newChickenAliNazik(double price) {
    return FoodMenuItem(
      name: "Alinazik Chicken",
      description: "Chicken chop, yogurt, eggplant",
      image: "mi_alinazik_chicken",
      price: price,
      choices: const [
        Extras(
          name: "Extra Ingredients",
          choiceItems: [
            ChoiceItem(name: "Mushroom", price: 3.0),
            ChoiceItem(name: "Special Sauce", price: 2.0),
          ],
        ),
      ],
    );
  }

  static FoodMenuItem newChickenSteak(double price) {
    return FoodMenuItem(
      name: "Grilled Chicken Steak",
      description: "Grilled chicken steak, pasta, salad",
      image: "mi_grilled_chicken_steak",
      price: price,
      choices: const [
        Extras(
          name: "Extra Ingredients",
          choiceItems: [
            ChoiceItem(name: "Mushroom", price: 3.0),
            ChoiceItem(name: "Special Sauce", price: 2.0),
          ],
        )
      ],
    );
  }

  static FoodMenuItem newChickenCurrySauce(double price) {
    return FoodMenuItem(
      name: "Chicken with curry sauce",
      description: "Chicken curry sauce, mushroom, pasta, onion, salad",
      image: "mi_curry_chicken",
      price: price,
      choices: const [
        Extras(
          name: "Extra Ingredients",
          choiceItems: [
            ChoiceItem(name: "Mushroom", price: 3.0),
            ChoiceItem(name: "Special Sauce", price: 2.0),
          ],
        )
      ],
    );
  }

  static FoodMenuItem newChickenFajitas(double price) {
    return FoodMenuItem(
      name: "Chicken Fajitas",
      description: "Chicken fajitas, mushroom, onion, salad, pepper",
      image: "mi_chicken_fajitas",
      price: price,
      choices: const [
        Removables(
          name: "Ingredients",
          choiceItems: [
            ChoiceItem(name: "Onion"),
            ChoiceItem(name: "Pepper"),
          ],
        ),
        Options(
          name: "Potato",
          choiceItems: [
            ChoiceItem(name: "Apple slice", isDefault: true),
            ChoiceItem(name: "Finger"),
          ],
        ),
        Extras(
          name: "Extra Ingredients",
          choiceItems: [
            ChoiceItem(name: "Mushroom", price: 3.0),
            ChoiceItem(name: "Special Sauce", price: 2.0),
          ],
        ),
      ],
    );
  }

  // pasta

  static FoodMenuItem newPastaNoodleChicken(double price) {
    return FoodMenuItem(
      name: "Noodle Chicken",
      description: "Chicken with sauce, mushroom, pepper",
      image: "mi_noodle_chicken",
      price: price,
      choices: const [
        Removables(
          name: "Ingredients",
          choiceItems: [
            ChoiceItem(name: "Pepper"),
          ],
        ),
      ],
    );
  }

  static FoodMenuItem newPastaSpaghettiBolognese(double price) {
    return FoodMenuItem(
      name: "Spaghetti Bolognese",
      description: "Tomato sauce, mince, pasta",
      image: "mi_spaghetti_bolognese",
      price: price,
      choices: const [],
    );
  }

  static FoodMenuItem newPastaNapoliten(double price) {
    return FoodMenuItem(
      name: "Napoliten Pasta",
      description: "Napolitan sauce, cheddar, pasta",
      image: "mi_napolitan_pasta",
      price: price,
      choices: const [],
    );
  }

  static FoodMenuItem newPastaAlfredo(double price) {
    return FoodMenuItem(
      name: "Alfredo Pasta",
      description: "Chicken with sauce, cheddar, mushroom, pasta, custard",
      image: "mi_alfredo_pasta",
      price: price,
      choices: const [],
    );
  }

  // Meat

  static FoodMenuItem newMeatTenderloin(double price) {
    return FoodMenuItem(
      name: "Tenderloin",
      description: "Tenderloin, salad, pasta.",
      image: "mi_tenderloin",
      price: price,
      choices: const [
        Extras(
          name: "Sauces",
          choiceItems: [
            ChoiceItem(name: "Barbeque", price: 2.0),
            ChoiceItem(name: "Ranch", price: 2.0),
            ChoiceItem(name: "Garlic", price: 2.0),
            ChoiceItem(name: "Mustrad", price: 2.0),
            ChoiceItem(name: "Chili", price: 2.0),
          ],
        ),
      ],
    );
  }

  static FoodMenuItem newMeatTenderloinMushroom(double price) {
    return FoodMenuItem(
      name: "Tenderloin with Mushroom Sauce",
      description: "Tenderloin, mushroom sauce, salad, pasta.",
      image: "mi_tenderloin_mushroom",
      price: price,
      choices: const [
        Extras(
          name: "Sauces",
          choiceItems: [
            ChoiceItem(name: "Barbeque", price: 2.0),
            ChoiceItem(name: "Ranch", price: 2.0),
            ChoiceItem(name: "Garlic", price: 2.0),
            ChoiceItem(name: "Mustrad", price: 2.0),
            ChoiceItem(name: "Cheddar", price: 2.0),
            ChoiceItem(name: "Chili", price: 2.0),
          ],
        ),
      ],
    );
  }

  static FoodMenuItem newMeatGrilledMeatBall(double price) {
    return FoodMenuItem(
      name: "Grilled Meatball",
      description: "Grilled meatball, salad, potato.",
      image: "mi_tenderloin",
      price: price,
      choices: const [
        Extras(
          name: "Sauces",
          choiceItems: [
            ChoiceItem(name: "Barbeque", price: 2.0),
            ChoiceItem(name: "Ranch", price: 2.0),
            ChoiceItem(name: "Garlic", price: 2.0),
            ChoiceItem(name: "Mustrad", price: 2.0),
            ChoiceItem(name: "Cheddar", price: 2.0),
            ChoiceItem(name: "Chili", price: 2.0),
          ],
        ),
      ],
    );
  }

  // salad

  static FoodMenuItem newSaladCaesar(double price) {
    return FoodMenuItem(
      name: "Caesar Salad",
      description: "Chicken fillet, cucumber, tomato, lettuce, caesar sauce.",
      image: "mi_caesar_salad",
      price: price,
      choices: const [],
    );
  }

  static FoodMenuItem newSaladMexican(double price) {
    return FoodMenuItem(
      name: "Mexican Salad",
      description:
          "Chicken with Mexican sauce, cucumber, tomato, corn, lettuce.",
      image: "mi_mexican_salad",
      price: price,
      choices: const [],
    );
  }

  static FoodMenuItem newSaladThai(double price) {
    return FoodMenuItem(
      name: "Thai Salad",
      description:
          "Mushrooms in sauce, beans, lettuce, cucumber, tomato, corn.",
      image: "mi_thai_salad",
      price: price,
      choices: const [],
    );
  }

  static FoodMenuItem newSaladTuna(double price) {
    return FoodMenuItem(
      name: "Tuna Salad",
      description:
          "Mediterranean salad, tuna, tomato, cucumber, corn, lettuce.",
      image: "mi_tuna_salad",
      price: price,
      choices: const [],
    );
  }

  // beverage

  static FoodMenuItem newCola33(double price) {
    return FoodMenuItem(
      name: "Cola 33cl.",
      description: "",
      image: "mi_cola_33",
      price: price,
      choices: const [],
    );
  }

  static FoodMenuItem newSprite33(double price) {
    return FoodMenuItem(
      name: "Sprite 33cl.",
      description: "",
      image: "mi_sprite_33",
      price: price,
      choices: const [],
    );
  }

  static FoodMenuItem newFanta33(double price) {
    return FoodMenuItem(
      name: "Fanta 33cl.",
      description: "",
      image: "mi_fanta_33",
      price: price,
      choices: const [],
    );
  }

  static FoodMenuItem newFruko33(double price) {
    return FoodMenuItem(
      name: "Fruko 33cl.",
      description: "",
      image: "mi_fruko_33",
      price: price,
      choices: const [],
    );
  }

  static FoodMenuItem newCappy33(double price) {
    return FoodMenuItem(
      name: "Cappy 33cl.",
      description: "",
      image: "mi_cappy_33",
      price: price,
      choices: const [],
    );
  }

  static FoodMenuItem newSevenup33(double price) {
    return FoodMenuItem(
      name: "7up 33cl.",
      description: "",
      image: "mi_sevenup_33",
      price: price,
      choices: const [],
    );
  }
}
