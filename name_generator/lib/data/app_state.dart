import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class AppState extends ChangeNotifier {
  var current = WordPair.random();
  var favorites = <WordPair>[];
  var selectedIndex = 0;
  var selectIndexInOtherWidget = 0;

  void getNext() {
    current = WordPair.random();
    notifyListeners();
  }

  void toogleFavorite() {
    if (favorites.contains(current)) {
      favorites.remove(current);
    }
    else {
      favorites.add(current);
    }

    notifyListeners();
  }
}