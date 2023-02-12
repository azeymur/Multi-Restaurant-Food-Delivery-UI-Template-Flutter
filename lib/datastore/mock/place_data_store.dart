import 'package:food_delivery_multi_template/datastore/mock/mock_data_store.dart';
import 'package:food_delivery_multi_template/helper/menu_helper.dart';
import 'package:food_delivery_multi_template/model/menu_category.dart';
import 'package:food_delivery_multi_template/model/place.dart';

// Mock data store with fake entities to test.
class PlaceDataStore extends MockDataStore<Place> {
  @override
  List<Place> items = [
    Place(
      id: "pl001",
      name: "Barbara Bakery",
      image: "place_bakery1",
      description: "Croissant · Cake",
      isFeatured: true,
      deliveryTime: "25",
      deliveryPrice: 8.0,
      district: "Donec",
      cuisineIds: const ["cu001"],
      menuCategories: [
        MenuCategory(
          name: "Croissant",
          menuItems: [
            MenuHelper.newCroissantPlain(4.0),
            MenuHelper.newCroissantAlmond(5.0),
            MenuHelper.newCroissantRocher(7.0),
          ],
        ),
        MenuCategory(
          name: "Cakes",
          menuItems: [
            MenuHelper.newDessertSaltedCaramelBrownie(3.0),
            MenuHelper.newDessertGingerCarrotCake(3.0),
          ],
        ),
        MenuCategory(
          name: "Coffee",
          menuItems: [
            MenuHelper.newCafeeLatte(1.0),
            MenuHelper.newCafeeCappucino(2.0)
          ],
        )
      ],
    ),
    Place(
      id: "pl002",
      name: "Celarent Patisserie",
      image: "place_bakery2",
      description: "Croissant · Eclair",
      isNew: true,
      deliveryTime: "20",
      deliveryPrice: 10.0,
      district: "Phasellus",
      cuisineIds: const ["cu001"],
      menuCategories: [
        MenuCategory(
          name: "Croissant Sandwich",
          menuItems: [
            MenuHelper.newCroissantSandwich(6.0),
            MenuHelper.newCroissantAvocadoSandwich(6.0),
            MenuHelper.newCroissantEntrecoteSandwich(6.0)
          ],
        ),
        MenuCategory(
          name: "Eclair",
          menuItems: [
            MenuHelper.newEclairClassic(3.0),
            MenuHelper.newEclairSnickers(3.0),
            MenuHelper.newCroissantRocher(3.0)
          ],
        ),
        MenuCategory(
          name: "Coffee",
          menuItems: [
            MenuHelper.newCafeeAmericano(2.0),
            MenuHelper.newCafeeIceAmericano(2.0),
            MenuHelper.newCafeeLatte(2.0),
            MenuHelper.newCafeeCappucino(2.0)
          ],
        )
      ],
    ),
    Place(
      id: "pl003",
      name: "Darii Bakery & Dessert",
      image: "place_bakery3",
      description: "Dessert · Eclair",
      isPopular: true,
      deliveryTime: "35",
      deliveryPrice: 12.0,
      district: "Fusce",
      cuisineIds: const ["cu001", "cu004"],
      menuCategories: [
        MenuCategory(
          name: "Dessert",
          menuItems: [
            MenuHelper.newDessertSupangle(2.0),
            MenuHelper.newDessertProfiterole(3.0),
            MenuHelper.newDessertLemonTart(2.0)
          ],
        ),
        MenuCategory(
          name: "Eclair",
          menuItems: [
            MenuHelper.newEclairClassic(4.0),
            MenuHelper.newEclairSnickers(4.0),
            MenuHelper.newEclairRocher(5.0)
          ],
        ),
        MenuCategory(
          name: "Coffee",
          menuItems: [
            MenuHelper.newCafeeAmericano(1.0),
            MenuHelper.newCafeeIceAmericano(1.0)
          ],
        ),
      ],
    ),
    Place(
      id: "pl004",
      name: "Ferio Burger",
      image: "place_burger1",
      description: "Burger · Chicken",
      isFeatured: true,
      deliveryTime: "20",
      deliveryPrice: 6.0,
      district: "Pulvinar",
      cuisineIds: const ["cu002"],
      menuCategories: [
        MenuCategory(
          name: "Menu",
          menuItems: [
            MenuHelper.newBurgerClassicMenu(9.0),
            MenuHelper.newBurgerClassicDoubleMenu(14.0),
            MenuHelper.newBurgerChickenMenu(6.0),
            MenuHelper.newBurgerDoubleChickenMenu(10.0)
          ],
        ),
        MenuCategory(
          name: "Burger",
          menuItems: [
            MenuHelper.newBurgerClassic(5.0),
            MenuHelper.newBurgerClassicDouble(7.0),
            MenuHelper.newBurgerChicken(3.0),
            MenuHelper.newBurgerDoubleChicken(5.0)
          ],
        ),
        MenuCategory(
          name: "Beverage",
          menuItems: [
            MenuHelper.newCola33(2.0),
            MenuHelper.newSprite33(2.0),
            MenuHelper.newFanta33(2.0)
          ],
        ),
      ],
    ),
    Place(
      id: "pl005",
      name: "Camestres Burger",
      image: "place_burger2",
      description: "Burger · Salad",
      isNew: true,
      deliveryTime: "45",
      deliveryPrice: 15.0,
      district: "Aliquam",
      cuisineIds: const ["cu002"],
      menuCategories: [
        MenuCategory(
          name: "Burger",
          menuItems: [
            MenuHelper.newBurgerClassic(7.0),
            MenuHelper.newBurgerClassicDouble(14.0),
            MenuHelper.newBurgerChicken(6.0),
            MenuHelper.newBurgerDoubleChicken(11.0)
          ],
        ),
        MenuCategory(
          name: "Salad",
          menuItems: [
            MenuHelper.newSaladCaesar(5.0),
            MenuHelper.newSaladMexican(5.0),
            MenuHelper.newSaladThai(6.0),
            MenuHelper.newSaladTuna(6.0)
          ],
        ),
        MenuCategory(
          name: "Beverage",
          menuItems: [
            MenuHelper.newCola33(1.0),
            MenuHelper.newSprite33(1.0),
            MenuHelper.newFanta33(1.0)
          ],
        ),
      ],
    ),
    Place(
      id: "pl006",
      name: "Baroco Burger & Sandwiches",
      image: "place_burger3",
      description: "Burger · Dessert",
      isPopular: true,
      deliveryTime: "40",
      deliveryPrice: 10.0,
      district: "Volutpat",
      cuisineIds: const ["cu002", "cu007"],
      menuCategories: [
        MenuCategory(
          name: "Menu",
          menuItems: [
            MenuHelper.newBurgerClassicMenu(10.0),
            MenuHelper.newBurgerClassicDoubleMenu(15.0),
            MenuHelper.newBurgerChickenMenu(8.0),
            MenuHelper.newBurgerDoubleChickenMenu(14.0)
          ],
        ),
        MenuCategory(
          name: "Dessert",
          menuItems: [
            MenuHelper.newDessertMosaicCake(3.0),
            MenuHelper.newDessertDevilsCake(3.0),
            MenuHelper.newDessertCheeseCake(3.0),
            MenuHelper.newDessertMonoCake(4.0)
          ],
        ),
        MenuCategory(
          name: "Beverage",
          menuItems: [
            MenuHelper.newCola33(3.0),
            MenuHelper.newSprite33(3.0),
            MenuHelper.newFanta33(3.0),
          ],
        ),
      ],
    ),
    Place(
      id: "pl007",
      name: "Cesare Chicken",
      image: "place_chicken1",
      description: "Chicken · Salad",
      isFeatured: true,
      deliveryTime: "30",
      deliveryPrice: 12.0,
      district: "Sagittis",
      cuisineIds: const ["cu003"],
      menuCategories: [
        MenuCategory(
          name: "Chicken",
          menuItems: [
            MenuHelper.newChickenAliNazik(12.0),
            MenuHelper.newChickenSteak(11.0),
            MenuHelper.newChickenCurrySauce(10.0),
            MenuHelper.newChickenFajitas(13.0),
          ],
        ),
        MenuCategory(
          name: "Salad",
          menuItems: [
            MenuHelper.newSaladCaesar(5.0),
            MenuHelper.newSaladMexican(6.0)
          ],
        ),
        MenuCategory(
          name: "Bevereage",
          menuItems: [
            MenuHelper.newFruko33(2.0),
            MenuHelper.newCappy33(2.0),
            MenuHelper.newSevenup33(2.0),
          ],
        ),
      ],
    ),
    Place(
      id: "pl008",
      name: "Festino Chicken",
      image: "place_chicken2",
      description: "Chicken · Salad",
      isNew: true,
      deliveryTime: "35",
      deliveryPrice: 15.0,
      district: "Mollis",
      cuisineIds: const ["cu003"],
      menuCategories: [
        MenuCategory(
          name: "Chicken",
          menuItems: [
            MenuHelper.newChickenSteak(7.0),
            MenuHelper.newChickenCurrySauce(7.0),
            MenuHelper.newChickenAliNazik(7.0),
          ],
        ),
        MenuCategory(
          name: "Chicken Burger",
          menuItems: [
            MenuHelper.newBurgerChicken(9.0),
            MenuHelper.newBurgerDoubleChicken(13.0),
            MenuHelper.newBurgerChickenMenu(8.0),
            MenuHelper.newBurgerDoubleChickenMenu(12.0),
          ],
        ),
        MenuCategory(
          name: "Salad",
          menuItems: [
            MenuHelper.newSaladMexican(4.0),
            MenuHelper.newSaladTuna(4.0),
            MenuHelper.newSaladCaesar(4.0),
          ],
        ),
        MenuCategory(
          name: "Beverage",
          menuItems: [
            MenuHelper.newSprite33(1.0),
            MenuHelper.newFruko33(1.0),
            MenuHelper.newSevenup33(1.0),
          ],
        ),
      ],
    ),
    Place(
      id: "pl009",
      name: "Darapti Chicken & Meat",
      image: "place_chicken3",
      description: "Chicken · Meat · Dessert",
      isPopular: true,
      deliveryTime: "35",
      deliveryPrice: 9.0,
      district: "Fermentum",
      cuisineIds: const ["cu003", "cu008"],
      menuCategories: [
        MenuCategory(
          name: "Chicken",
          menuItems: [
            MenuHelper.newChickenSteak(10.0),
            MenuHelper.newChickenCurrySauce(10.0),
            MenuHelper.newChickenFajitas(12.0),
          ],
        ),
        MenuCategory(
          name: "Meat",
          menuItems: [
            MenuHelper.newMeatTenderloin(15.0),
            MenuHelper.newMeatTenderloinMushroom(17.0),
            MenuHelper.newMeatGrilledMeatBall(18.0),
          ],
        ),
        MenuCategory(
          name: "Dessert",
          menuItems: [
            MenuHelper.newDessertSupangle(4.0),
            MenuHelper.newDessertProfiterole(4.0),
            MenuHelper.newDessertMosaicCake(4.0),
            MenuHelper.newDessertMonoCake(4.0),
          ],
        ),
        MenuCategory(
          name: "Beverage",
          menuItems: [
            MenuHelper.newCola33(2.0),
            MenuHelper.newFanta33(2.0),
            MenuHelper.newCappy33(2.0),
          ],
        ),
      ],
    ),
    Place(
      id: "pl010",
      name: "Datisi Dessert",
      image: "place_dessert1",
      description: "Dessert · Eclair",
      isFeatured: true,
      deliveryTime: "30",
      deliveryPrice: 10.0,
      district: "Volutpat",
      cuisineIds: const ["cu004"],
      menuCategories: [
        MenuCategory(
          name: "Dessert",
          menuItems: [
            MenuHelper.newEclairClassic(3.0),
            MenuHelper.newDessertCheeseCake(3.0),
            MenuHelper.newDessertDevilsCake(4.0),
            MenuHelper.newDessertMonoCake(4.0),
            MenuHelper.newDessertProfiterole(3.0),
          ],
        ),
        MenuCategory(
          name: "Beverage",
          menuItems: [
            MenuHelper.newCappy33(3.0),
            MenuHelper.newFruko33(3.0),
            MenuHelper.newSprite33(3.0),
          ],
        ),
      ],
    ),
    Place(
      id: "pl011",
      name: "Felapton Dessert",
      image: "place_dessert2",
      description: "Dessert · Croissant",
      isNew: true,
      deliveryTime: "15",
      deliveryPrice: 5.0,
      district: "Sagittis",
      cuisineIds: const ["cu004"],
      menuCategories: [
        MenuCategory(
          name: "Dessert",
          menuItems: [
            MenuHelper.newEclairRocher(4.0),
            MenuHelper.newEclairSnickers(3.0),
            MenuHelper.newDessertLemonTart(3.0),
            MenuHelper.newDessertSupangle(4.0),
            MenuHelper.newDessertSaltedCaramelBrownie(4.0),
            MenuHelper.newDessertCheeseCake(3.0),
          ],
        ),
        MenuCategory(
          name: "Croissant",
          menuItems: [
            MenuHelper.newCroissantAlmond(5.0),
            MenuHelper.newCroissantEntrecoteSandwich(6.0),
            MenuHelper.newCroissantAvocadoSandwich(6.0),
          ],
        ),
        MenuCategory(
          name: "Beverage",
          menuItems: [
            MenuHelper.newCola33(2.0),
            MenuHelper.newSprite33(2.0),
            MenuHelper.newCappy33(2.0),
            MenuHelper.newFruko33(2.0),
          ],
        ),
      ],
    ),
    Place(
      id: "pl012",
      name: "Ferison Dessert",
      image: "place_dessert3",
      description: "Dessert · Croissant",
      isPopular: true,
      deliveryTime: "25",
      deliveryPrice: 9.0,
      district: "Phasellus",
      cuisineIds: const ["cu004"],
      menuCategories: [
        MenuCategory(
          name: "Dessert",
          menuItems: [
            MenuHelper.newEclairClassic(4.0),
            MenuHelper.newEclairSnickers(4.0),
            MenuHelper.newDessertLemonTart(4.0),
            MenuHelper.newDessertGingerCarrotCake(4.0),
            MenuHelper.newDessertMosaicCake(4.0),
          ],
        ),
        MenuCategory(
          name: "Croissant",
          menuItems: [
            MenuHelper.newCroissantEntrecoteSandwich(2.0),
            MenuHelper.newCroissantAlmond(2.0),
            MenuHelper.newCroissantRocher(3.0),
            MenuHelper.newCroissantSandwich(3.0),
          ],
        ),
      ],
    ),
    Place(
      id: "pl013",
      name: "Etiam",
      image: "place_meatballs1",
      description: "Meat · Pasta · Dessert",
      isFeatured: true,
      deliveryTime: "30",
      deliveryPrice: 12.0,
      district: "Aliquam",
      cuisineIds: const ["cu005"],
      menuCategories: [
        MenuCategory(
          name: "Meat",
          menuItems: [
            MenuHelper.newMeatGrilledMeatBall(10.0),
            MenuHelper.newMeatTenderloin(10.0),
            MenuHelper.newMeatTenderloinMushroom(11.0),
          ],
        ),
        MenuCategory(
          name: "Pasta",
          menuItems: [
            MenuHelper.newPastaAlfredo(8.0),
            MenuHelper.newPastaNapoliten(9.0),
            MenuHelper.newPastaSpaghettiBolognese(9.0),
          ],
        ),
        MenuCategory(
          name: "Beverage",
          menuItems: [
            MenuHelper.newFruko33(3.0),
            MenuHelper.newCola33(3.0),
            MenuHelper.newSprite33(3.0),
          ],
        ),
        MenuCategory(
          name: "Dessert",
          menuItems: [
            MenuHelper.newDessertCheeseCake(4.0),
            MenuHelper.newDessertProfiterole(5.0),
            MenuHelper.newDessertSupangle(5.0),
          ],
        ),
      ],
    ),
    Place(
      id: "pl014",
      name: "Vivamus Meat & Chicken",
      image: "place_meatballs2",
      description: "Meat · Chicken",
      isNew: true,
      deliveryTime: "30",
      deliveryPrice: 10.0,
      district: "Donec",
      cuisineIds: const ["cu005", "cu003"],
      menuCategories: [
        MenuCategory(
          name: "Meat",
          menuItems: [
            MenuHelper.newMeatGrilledMeatBall(9.0),
            MenuHelper.newMeatTenderloin(12.0),
            MenuHelper.newMeatTenderloinMushroom(13.0),
          ],
        ),
        MenuCategory(
          name: "Chicken",
          menuItems: [
            MenuHelper.newChickenFajitas(11.0),
            MenuHelper.newChickenSteak(12.0),
            MenuHelper.newChickenCurrySauce(11.0),
          ],
        ),
        MenuCategory(
          name: "Beverage",
          menuItems: [
            MenuHelper.newFruko33(2.0),
            MenuHelper.newSprite33(2.0),
            MenuHelper.newCola33(2.0),
          ],
        ),
      ],
    ),
    Place(
      id: "pl015",
      name: "Magnis Meat & Burger",
      image: "place_meatballs3",
      description: "Meat · Burger · Salad · Dessert",
      isPopular: true,
      deliveryTime: "25",
      deliveryPrice: 8.0,
      district: "Pulvinar",
      cuisineIds: const ["cu005", "cu002"],
      menuCategories: [
        MenuCategory(
          name: "Meat",
          menuItems: [
            MenuHelper.newMeatGrilledMeatBall(13.0),
            MenuHelper.newMeatTenderloin(15.0),
          ],
        ),
        MenuCategory(
          name: "Burger",
          menuItems: [
            MenuHelper.newBurgerClassic(9.0),
            MenuHelper.newBurgerClassicDouble(16.0),
            MenuHelper.newBurgerClassicMenu(14.0),
            MenuHelper.newBurgerClassicDoubleMenu(20.0),
          ],
        ),
        MenuCategory(
          name: "Salad",
          menuItems: [
            MenuHelper.newSaladThai(5.0),
            MenuHelper.newSaladCaesar(6.0),
            MenuHelper.newSaladTuna(6.0),
          ],
        ),
        MenuCategory(
          name: "Dessert",
          menuItems: [
            MenuHelper.newDessertCheeseCake(4.0),
            MenuHelper.newDessertDevilsCake(5.0),
            MenuHelper.newDessertMosaicCake(4.0),
            MenuHelper.newDessertProfiterole(5.0),
          ],
        ),
        MenuCategory(
          name: "Beverage",
          menuItems: [
            MenuHelper.newFruko33(2.0),
            MenuHelper.newCola33(2.0),
            MenuHelper.newSevenup33(2.0),
            MenuHelper.newSprite33(2.0),
          ],
        ),
      ],
    ),
    Place(
      id: "pl016",
      name: "Dimaris Salad",
      image: "place_pasta1",
      description: "Salad · Pasta",
      isFeatured: true,
      deliveryTime: "30",
      deliveryPrice: 10.0,
      district: "Volutpat",
      cuisineIds: const ["cu006"],
      menuCategories: [
        MenuCategory(
          name: "Salad",
          menuItems: [
            MenuHelper.newSaladCaesar(3.0),
            MenuHelper.newSaladMexican(3.0),
            MenuHelper.newSaladThai(3.0),
            MenuHelper.newSaladTuna(3.0),
          ],
        ),
        MenuCategory(
          name: "Pasta",
          menuItems: [
            MenuHelper.newPastaAlfredo(4.0),
            MenuHelper.newPastaNapoliten(4.0),
            MenuHelper.newPastaSpaghettiBolognese(4.0),
          ],
        ),
        MenuCategory(
          name: "Beverage",
          menuItems: [
            MenuHelper.newCappy33(2.0),
            MenuHelper.newCola33(2.0),
            MenuHelper.newFanta33(2.0),
          ],
        ),
      ],
    ),
    Place(
      id: "pl017",
      name: "Fusce Pasta & Salad",
      image: "place_pasta2",
      description: "Pasta · Salad",
      isNew: true,
      deliveryTime: "35",
      deliveryPrice: 12.0,
      district: "Phasellus",
      cuisineIds: const ["cu006"],
      menuCategories: [
        MenuCategory(
          name: "Pasta",
          menuItems: [
            MenuHelper.newPastaAlfredo(5.0),
            MenuHelper.newPastaNoodleChicken(5.0),
            MenuHelper.newPastaNapoliten(5.0),
            MenuHelper.newPastaSpaghettiBolognese(5.0),
          ],
        ),
        MenuCategory(
          name: "Salad",
          menuItems: [
            MenuHelper.newSaladCaesar(3.0),
            MenuHelper.newSaladMexican(3.0),
            MenuHelper.newSaladThai(3.0),
            MenuHelper.newSaladTuna(3.0),
          ],
        ),
        MenuCategory(
          name: "Beverage",
          menuItems: [
            MenuHelper.newCappy33(2.0),
            MenuHelper.newCola33(2.0),
            MenuHelper.newFanta33(2.0),
          ],
        ),
      ],
    ),
    Place(
      id: "pl018",
      name: "Aliquam Pasta",
      image: "place_pasta3",
      description: "Pasta · Salad",
      isPopular: true,
      deliveryTime: "20",
      deliveryPrice: 10.0,
      district: "Sagittis",
      cuisineIds: const ["cu006"],
      menuCategories: [
        MenuCategory(
          name: "Pasta",
          menuItems: [
            MenuHelper.newPastaAlfredo(5.0),
            MenuHelper.newPastaNoodleChicken(4.0),
            MenuHelper.newPastaNapoliten(5.0),
            MenuHelper.newPastaSpaghettiBolognese(6.0),
          ],
        ),
        MenuCategory(
          name: "Salad",
          menuItems: [
            MenuHelper.newSaladCaesar(5.0),
            MenuHelper.newSaladMexican(5.0),
            MenuHelper.newSaladThai(5.0),
            MenuHelper.newSaladTuna(5.0),
          ],
        ),
        MenuCategory(
          name: "Beverage",
          menuItems: [
            MenuHelper.newCappy33(1.0),
            MenuHelper.newCola33(1.0),
            MenuHelper.newFanta33(1.0),
          ],
        ),
      ],
    ),
  ];
}
