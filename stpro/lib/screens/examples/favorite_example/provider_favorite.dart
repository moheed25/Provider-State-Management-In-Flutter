import 'package:flutter/cupertino.dart';

class FavoriteItemProvider with ChangeNotifier {
  List<int> _selectedItems = [];

  List<int> get selectedItems => _selectedItems;

  void addItem(int value) {
    _selectedItems.add(value);
    notifyListeners();
  }
}
