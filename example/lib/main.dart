import 'package:flutter/material.dart';
import 'package:emoji_feedback/emoji_feedback.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlipCard',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Emoji Feedback'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 48.0, left: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'How was the help you recieved?',
                style: Theme.of(context)
                    .textTheme
                    .body1
                    .copyWith(color: Colors.grey),
              ),
            ),
            EmojiFeedback(
              onChange: (index) {
                print(index);
              },
            ),
          ],
        ),
      ),
    );
  }
}
