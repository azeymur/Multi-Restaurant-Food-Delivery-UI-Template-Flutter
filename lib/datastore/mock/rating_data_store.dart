import 'package:food_delivery_multi_template/datastore/mock/mock_data_store.dart';
import 'package:food_delivery_multi_template/model/rating.dart';

// Mock data store with fake entities to test.
class RatingDataStore extends MockDataStore<Rating> {
  @override
  List<Rating> items = [
    Rating(
      id: "ra001",
      star: 3,
      placeId: "pl001",
      customerId: "cu001",
      dateGmt: DateTime(2020, 1, 1),
      text:
          "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.",
    ),
    Rating(
      id: "ra002",
      star: 5,
      placeId: "pl002",
      customerId: "cu002",
      dateGmt: DateTime(2020, 1, 6),
      text:
          "Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Nam a efficitur neque.",
    ),
    Rating(
      id: "ra003",
      star: 5,
      placeId: "pl003",
      customerId: "cu001",
      dateGmt: DateTime(2020, 2, 4),
      text:
          "Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.",
    ),
    Rating(
      id: "ra004",
      star: 5,
      placeId: "pl004",
      customerId: "cu002",
      dateGmt: DateTime(2020, 2, 14),
      text:
          "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
    ),
    Rating(
      id: "ra005",
      star: 4,
      placeId: "pl005",
      customerId: "cu001",
      dateGmt: DateTime(2020, 3, 3),
      text:
          "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    ),
    Rating(
      id: "ra006",
      star: 4,
      placeId: "pl006",
      customerId: "cu002",
      dateGmt: DateTime(2020, 3, 9),
      text:
          "Donec vitae purus porttitor, viverra turpis ac, viverra lectus. Cras dapibus volutpat quam, sed pellentesque nisl ultrices eget. Vivamus malesuada iaculis mauris nec finibus. Pellentesque arcu mauris, interdum quis luctus nec, viverra quis eros.",
    ),
    Rating(
      id: "ra007",
      star: 5,
      placeId: "pl007",
      customerId: "cu001",
      dateGmt: DateTime(2020, 3, 22),
      text: "Sed maximus cursus ultricies.",
    ),
    Rating(
      id: "ra008",
      star: 3,
      placeId: "pl008",
      customerId: "cu002",
      dateGmt: DateTime(2020, 4, 8),
      text: "Nam eget accumsan libero.",
    ),
    Rating(
      id: "ra009",
      star: 3,
      placeId: "pl009",
      customerId: "cu001",
      dateGmt: DateTime(2020, 4, 11),
      text:
          "Phasellus tellus velit, sollicitudin quis ultrices eget, pellentesque eget ipsum.",
    ),
    Rating(
      id: "ra010",
      star: 5,
      placeId: "pl010",
      customerId: "cu002",
      dateGmt: DateTime(2020, 5, 8),
      text:
          "Donec ac turpis facilisis, consequat mi varius, sodales diam. Curabitur ac metus consequat, hendrerit turpis in, facilisis purus. Cras tincidunt, ex id venenatis sollicitudin, est quam egestas neque, quis ullamcorper tellus erat vel urna.",
    ),
    Rating(
      id: "ra011",
      star: 2,
      placeId: "pl011",
      customerId: "cu001",
      dateGmt: DateTime(2020, 6, 17),
      text:
          "Integer volutpat ligula sed semper vulputate. Donec tincidunt lobortis leo, at lacinia lectus semper non. In laoreet fringilla felis in posuere.",
    ),
    Rating(
      id: "ra012",
      star: 1,
      placeId: "pl012",
      customerId: "cu002",
      dateGmt: DateTime(2020, 7, 9),
      text:
          "Fusce molestie felis vel bibendum volutpat. Maecenas ac dapibus neque. Maecenas at erat a odio imperdiet euismod.",
    ),
    Rating(
      id: "ra013",
      star: 3,
      placeId: "p013",
      customerId: "cu001",
      dateGmt: DateTime(2020, 8, 18),
      text: "Aenean euismod dui vel pretium consequat.",
    ),
    Rating(
      id: "ra014",
      star: 4,
      placeId: "pl014",
      customerId: "cu002",
      dateGmt: DateTime(2020, 9, 21),
      text:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum commodo aliquam nibh et condimentum.",
    ),
    Rating(
      id: "ra015",
      star: 3,
      placeId: "pl015",
      customerId: "cu001",
      dateGmt: DateTime(2020, 9, 29),
      text: "Nullam maximus quis eros sed ultricies.",
    ),
    Rating(
      id: "ra016",
      star: 5,
      placeId: "pl016",
      customerId: "cu002",
      dateGmt: DateTime(2020, 10, 7),
      text: "Fusce a metus semper, suscipit erat in, aliquet mauris.",
    ),
    Rating(
      id: "ra017",
      star: 3,
      placeId: "pl017",
      customerId: "cu001",
      dateGmt: DateTime(2020, 12, 9),
      text:
          "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.",
    ),
    Rating(
      id: "ra018",
      star: 5,
      placeId: "pl018",
      customerId: "cu002",
      dateGmt: DateTime(2021, 1, 2),
      text:
          "Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Nam a efficitur neque.",
    ),
    Rating(
      id: "ra019",
      star: 4,
      placeId: "pl001",
      customerId: "cu001",
      dateGmt: DateTime(2021, 2, 6),
      text:
          "Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. ",
    ),
    Rating(
      id: "ra020",
      star: 5,
      placeId: "pl002",
      customerId: "cu002",
      dateGmt: DateTime(2021, 2, 18),
      text:
          "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
    ),
    Rating(
      id: "ra021",
      star: 4,
      placeId: "pl003",
      customerId: "cu001",
      dateGmt: DateTime(2021, 3, 4),
      text:
          "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    ),
    Rating(
      id: "ra022",
      star: 4,
      placeId: "pl004",
      customerId: "cu002",
      dateGmt: DateTime(2021, 3, 2),
      text:
          "Donec vitae purus porttitor, viverra turpis ac, viverra lectus. Cras dapibus volutpat quam, sed pellentesque nisl ultrices eget. Vivamus malesuada iaculis mauris nec finibus. Pellentesque arcu mauris, interdum quis luctus nec, viverra quis eros.",
    ),
    Rating(
      id: "ra023",
      star: 5,
      placeId: "pl005",
      customerId: "cu001",
      dateGmt: DateTime(2021, 3, 20),
      text: "Sed maximus cursus ultricies.",
    ),
    Rating(
      id: "ra024",
      star: 3,
      placeId: "pl006",
      customerId: "cu002",
      dateGmt: DateTime(2021, 4, 9),
      text: "Nam eget accumsan libero.",
    ),
    Rating(
      id: "ra025",
      star: 3,
      placeId: "pl007",
      customerId: "cu001",
      dateGmt: DateTime(2021, 4, 13),
      text:
          "Phasellus tellus velit, sollicitudin quis ultrices eget, pellentesque eget ipsum.",
    ),
    Rating(
      id: "ra026",
      star: 5,
      placeId: "pl008",
      customerId: "cu002",
      dateGmt: DateTime(2021, 5, 11),
      text:
          "Donec ac turpis facilisis, consequat mi varius, sodales diam. Curabitur ac metus consequat, hendrerit turpis in, facilisis purus. Cras tincidunt, ex id venenatis sollicitudin, est quam egestas neque, quis ullamcorper tellus erat vel urna.",
    ),
    Rating(
      id: "ra027",
      star: 2,
      placeId: "pl009",
      customerId: "cu001",
      dateGmt: DateTime(2021, 6, 4),
      text:
          "Integer volutpat ligula sed semper vulputate. Donec tincidunt lobortis leo, at lacinia lectus semper non. In laoreet fringilla felis in posuere.",
    ),
    Rating(
      id: "ra028",
      star: 1,
      placeId: "pl010",
      customerId: "cu002",
      dateGmt: DateTime(2021, 7, 30),
      text:
          "Fusce molestie felis vel bibendum volutpat. Maecenas ac dapibus neque. Maecenas at erat a odio imperdiet euismod.",
    ),
    Rating(
      id: "ra029",
      star: 3,
      placeId: "pl011",
      customerId: "cu001",
      dateGmt: DateTime(2021, 8, 28),
      text: "Aenean euismod dui vel pretium consequat.",
    ),
    Rating(
      id: "ra030",
      star: 4,
      placeId: "pl012",
      customerId: "cu002",
      dateGmt: DateTime(2021, 9, 6),
      text:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum commodo aliquam nibh et condimentum.",
    ),
    Rating(
      id: "ra031",
      star: 3,
      placeId: "pl013",
      customerId: "cu001",
      dateGmt: DateTime(2021, 9, 19),
      text: "Nullam maximus quis eros sed ultricies.",
    ),
    Rating(
      id: "ra032",
      star: 5,
      placeId: "pl014",
      customerId: "cu002",
      dateGmt: DateTime(2021, 10, 7),
      text: "Fusce a metus semper, suscipit erat in, aliquet mauris.",
    )
  ];
}
