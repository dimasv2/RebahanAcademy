import 'package:flutter/material.dart';

import './product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Redmibook 15',
      description:
          'RedmiBook 15 dibekali spesifikasi tinggi, sebut saja prosesor generasi ke-11, RAM besar hingga 8 GB hingga penggunaan penyimpanan SSD. Menariknya  laptop ini dibanderol dengan harga murah  Rp 6.999.000.',
      price: 6.999,
      imageUrl:
          'https://d1n6dbtoa2690v.cloudfront.net/article/603c93feb92c2e294e8b4567/603c93feb92c2e294e8b4567_1635849526.webp',
    ),
    Product(
      id: 'p2',
      title: 'Infinix X1',
      description:
          'INbook X1 hadir dengan bobot sekitar 1,48 kg dan sudah menggunakan material metal. Terlihat sedikit lebih berkelas dibanding laptop yang berbahan polycarbonate.Dari sisi sumber daya, laptop Infinix X1 dibekali baterai dengan kapasitas  50Wh yang diklaim bisa memberi daya hingga 13 jam. Harga Infinix INbook X1 dibanderol 6 jutaan.',
      price: 5.499,
      imageUrl:
          'https://d1n6dbtoa2690v.cloudfront.net/article/603c93feb92c2e294e8b4567/603c93feb92c2e294e8b4567_1635849543.webp',
    ),
    Product(
      id: 'p3',
      title: 'Aspire 5 A514-53',
      description:
          'Di urutan pertama laptop murah berkualitas ada Aspire 5 (A514-53) dari Acer. Laptop ini memiliki bentuk yang ramping dengan ketipisan 17.9 mm. Bobotnya pun ringan, hanya 1.5 kg. Sangat mudah dan nyaman untuk dibawa kemana-mana Harga laptop murah Acer Aspire 5 dibanderol Rp 6 jutaan.',
      price: 5.999,
      imageUrl:
          'https://d1n6dbtoa2690v.cloudfront.net/article/5565a4a2140ba0fb0d16ab21/5565a4a2140ba0fb0d16ab21_1599207443.webp',
    ),
    Product(
      id: 'p4',
      title: 'Lenovo IdeaPad S340',
      description:
          'Desainnya pun cukup ringkas, bentuknya tipis dan bobotnya ringan. Nyaman untuk dimasukkan kedalam tas karena tidak memakan banyak ruang. Saat membeli kamu sudah mendapatkan OS Windows 10 original, jadi bisa langsung dipakai. Harga Lenovo IdeaPad S340-14API-CTID sekitar 6 jutaan.',
      price: 5.999,
      imageUrl:
          'https://d1n6dbtoa2690v.cloudfront.net/article/5565a4a2140ba0fb0d16ab21/5565a4a2140ba0fb0d16ab21_1597039977.webp',
    ),
  ];
  // var _showFavoritesOnly = false;

  List<Product> get items {
    // if (_showFavoritesOnly) {
    //   return _items.where((prodItem) => prodItem.isFavorite).toList();
    // }
    return [..._items];
  }

  List<Product> get favoriteItems {
    return _items.where((prodItem) => prodItem.isFavorite).toList();
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  // void showFavoritesOnly() {
  //   _showFavoritesOnly = true;
  //   notifyListeners();
  // }

  // void showAll() {
  //   _showFavoritesOnly = false;
  //   notifyListeners();
  // }

  void addProduct() {
    // _items.add(value);
    notifyListeners();
  }
}
