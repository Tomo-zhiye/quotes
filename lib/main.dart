//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quotes/quote_model.dart';

void main() => runApp(MaterialApp(
      home: Myapp(),
    ));

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<QuoteModel>(
      create: (_) => QuoteModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Great Quotes'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: Consumer<QuoteModel>(builder: (context, model, child) {
          return Container(
            width: double.infinity,
            color: Colors.red,
            child: Column(
                children: model.quotes
                    .map((quote) => Text('${quote.quote} - ${quote.author}'))
                    .toList()),
          );
        }),
      ),
    );
  }
}
