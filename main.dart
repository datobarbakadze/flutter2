import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';
void main() {
  runApp(MaterialApp(
    home:Quote()
  ));
}

class Quote extends StatefulWidget {
  @override
  _QuoteState createState() => _QuoteState();
}

class _QuoteState extends State<Quote> {
  List<QuoteObject> quotes = [
    QuoteObject(text:"We can easily forgive a child who is afraid of the dark; the real tragedy of life is when men are afraid of the light",author:"Plato"),
    QuoteObject(text:"Science is nothing but perception.",author:"Plato"),
    QuoteObject(text:"Thinking: the talking of the soul with itself.",author:"Plato"),
    QuoteObject(text:"Courage is a kind of salvation.",author:"Plato"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.black,
      appBar:AppBar(
        title: Text('Quotes app bar'),
        titleSpacing:2.0,
        centerTitle: true,
        backgroundColor: Colors.teal[900],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: quotes.map(( quote) => QuoteCard(
          quote: quote,
          delete: (){
            setState((){
              quotes.remove(quote);
            });
          }
        )).toList(),
      ),
    );
  }
}
