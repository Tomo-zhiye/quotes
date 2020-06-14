import 'package:flutter/cupertino.dart';
import 'package:quotes/quote.dart';

class QuoteModel extends ChangeNotifier {
  List<Quote> quotes = [
    Quote(author: 'Tomo', quote: 'Be yourself; everyone is already taken'),
    Quote(
        author: 'Toto',
        quote:
            '4. Take a step back so that we can have a bit of a bird’s eye view of how we’re gonna structure our application'),
    Quote(
        author: 'Momo',
        quote:
            'Have absolutely no experience with any other programing language'),
  ];

  void getQuotes() {
    notifyListeners();
  }
}
