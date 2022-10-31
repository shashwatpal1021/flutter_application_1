import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(const RandomWords());
}

//stateless widgets

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
        title: 'Welcome to Flutter',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Welcome to flutter'),
          ),
          body: Center(child: Text(wordPair.asPascalCase)),
        ));
  }
}

// stateless widget

class RandomWords extends StatefulWidget {
  const RandomWords({super.key});

  @override
  State<RandomWords> createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    // return Container();
    // return Text(wordPair.asPascalCase);
    return MaterialApp(
        title: 'Welcome to Flutter',
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Hi shashwat'),
            ),
            body: Center(
              child: RandomWords(),
            )));
  }
}
