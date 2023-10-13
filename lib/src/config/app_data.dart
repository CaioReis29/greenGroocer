import 'package:greengrocer/src/models/cart_item_model.dart';
import 'package:greengrocer/src/models/order_model.dart';
import 'package:greengrocer/src/models/user_model.dart';

import '../models/item_model.dart';

ItemModel apple = ItemModel(
  description:
      'A melhor maçã da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
  imageUrl: 'assets/img/fruits/apple.png',
  itemName: 'Maçã',
  price: 5.5,
  unit: 'kg',
);

ItemModel grape = ItemModel(
  imageUrl: 'assets/img/fruits/grape.png',
  itemName: 'Uva',
  price: 7.4,
  unit: 'kg',
  description:
      'A melhor uva da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

ItemModel guava = ItemModel(
  imageUrl: 'assets/img/fruits/guava.png',
  itemName: 'Goiaba',
  price: 11.5,
  unit: 'kg',
  description:
      'A melhor goiaba da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

ItemModel kiwi = ItemModel(
  imageUrl: 'assets/img/fruits/kiwi.png',
  itemName: 'Kiwi',
  price: 2.5,
  unit: 'un',
  description:
      'O melhor kiwi da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

ItemModel mango = ItemModel(
  imageUrl: 'assets/img/fruits/mango.png',
  itemName: 'Manga',
  price: 2.5,
  unit: 'un',
  description:
      'A melhor manga da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

ItemModel papaya = ItemModel(
  imageUrl: 'assets/img/fruits/papaya.png',
  itemName: 'Mamão',
  price: 8,
  unit: 'kg',
  description:
      'O melhor mamão da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

List<ItemModel> items = [
  apple,
  grape,
  guava,
  kiwi,
  mango,
  papaya,
];

final List<String> categories = [
  "Frutas",
  "Verduras",
  "Temperos",
  "Cereais",
  "Grãos",
  "Legumes",
  "Orgânicos",
];

List<CartItemModel> cartItem = [
  CartItemModel(item: apple, quantity: 2),
  CartItemModel(item: grape, quantity: 1),
  CartItemModel(item: papaya, quantity: 5),
  CartItemModel(item: kiwi, quantity: 11),
];

UserModel user = UserModel(
  name: "Caio",
  email: "caio@gmail.com",
  phone: "99 9 9999-99",
  cpf: "999.999.999-99",
  password: "",
);

List<OrderModel> orders = [
  OrderModel(
    id: 'fbi4noi42apx90',
    createdDateTime: DateTime.parse('2021-06-08 10:00:12.787'),
    overdueDateTime: DateTime.parse('2024-06-08 13:00:12.787'),
    status: "pending_payment",
    cartItems: [
      CartItemModel(
        item: apple,
        quantity: 2,
      ),
      CartItemModel(
        item: kiwi,
        quantity: 2,
      ),
    ],
    copyAndPaste: 'a1plg01k90',
    total: 11.0,
  ),
  OrderModel(
    id: 'on329d8h9237d',
    createdDateTime: DateTime.parse('2021-06-08 10:00:12.787'),
    overdueDateTime: DateTime.parse('2024-06-08 13:00:12.787'),
    status: "preparing_purchase",
    cartItems: [
      CartItemModel(
        item: apple,
        quantity: 2,
      ),
      CartItemModel(
        item: kiwi,
        quantity: 2,
      ),
    ],
    copyAndPaste: 'a1plg01k90',
    total: 11.0,
  ),
  OrderModel(
    id: '093iognrf98',
    createdDateTime: DateTime.parse('2021-06-08 10:00:12.787'),
    overdueDateTime: DateTime.parse('2021-06-08 13:00:12.787'),
    status: "pending_payment",
    cartItems: [
      CartItemModel(
        item: apple,
        quantity: 2,
      ),
      CartItemModel(
        item: kiwi,
        quantity: 2,
      ),
    ],
    copyAndPaste: 'a1plg01k90',
    total: 11.0,
  ),
];
