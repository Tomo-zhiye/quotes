import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quotes/quote.dart';
import 'package:quotes/quote_model.dart';

import 'quote_card.dart';

void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ChangeNotifierProvider<QuoteModel>(
        create: (_) => QuoteModel()..fetchQuotes(),
        child: Scaffold(
          backgroundColor: Colors.grey[200],
          appBar: AppBar(
            title: Text('Awesome Quotes'),
            centerTitle: true,
            backgroundColor: Colors.redAccent,
          ),
          body: Consumer<QuoteModel>(builder: (context, model, child) {
            return Column(
                children: model.quotes
                    .map((quote) => QuoteCard(quote: quote))
                    .toList());
          }),
        ),
      ),
    );
  }
}
