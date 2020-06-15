import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:quotes/quote.dart';

class QuoteModel extends ChangeNotifier {
  List<Quote> quotes = [];

  Future fetchQuotes() async {
    final docs = await Firestore.instance.collection('quotes').getDocuments();
    final quotes = docs.documents
        .map((doc) => Quote(author: doc['author'], quote: doc['quote']))
        .toList();
    this.quotes = quotes;
    print(this.quotes);
    notifyListeners();
  }
}
