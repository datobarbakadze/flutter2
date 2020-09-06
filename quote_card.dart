import 'package:flutter/material.dart';
import 'quote.dart';
class QuoteCard extends StatelessWidget {
  final QuoteObject quote;
  final Function delete;
  QuoteCard({ this.quote, this.delete });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      shadowColor: Colors.white,
      elevation: 2.0,
      margin:EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              textAlign: TextAlign.left,
              style:TextStyle(
                color: Colors.white,
                letterSpacing: 1.0,
                fontSize: 16.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(height:1.0),
            Text(
              quote.author,
              textAlign: TextAlign.left,
              style:TextStyle(
                color: Colors.grey,
                letterSpacing: 1.0,
                fontSize: 14.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 10.0),
            FlatButton.icon(
              onPressed: delete,
              highlightColor: Colors.grey,
              label: Text("Delete Quote",
                style:TextStyle(
                  color:  Colors.redAccent[400],
                  letterSpacing: 1.0,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                )),
              icon: Icon(
                  Icons.delete_forever,
                  size:16.0,
                  color: Colors.redAccent[400],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
