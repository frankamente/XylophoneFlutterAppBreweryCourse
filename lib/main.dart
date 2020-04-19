import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      home: Scaffold(
        body: Center(
          child: Container(
            child: Column(
              children: <Widget>[
                XylophoneKey(
                  color: Colors.red,
                  number: 1,
                ),
                XylophoneKey(
                  color: Colors.orange,
                  number: 2,
                ),
                XylophoneKey(
                  color: Colors.yellow,
                  number: 3,
                ),
                XylophoneKey(
                  color: Colors.green,
                  number: 4,
                ),
                XylophoneKey(
                  color: Colors.teal,
                  number: 5,
                ),
                XylophoneKey(
                  color: Colors.blue,
                  number: 6,
                ),
                XylophoneKey(
                  color: Colors.purple,
                  number: 7,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class XylophoneKey extends StatelessWidget {
  const XylophoneKey({
    Key key,
    @required this.number,
    @required this.color,
  }) : super(key: key);
  final Color color;
  final int number;
  final String soundPrefix = 'note';
  final String fileExtension = '.wav';
  final AudioCache audioCache = AudioCache();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        child: InkWell(
          onTap: () {
            audioCache.play('${soundPrefix}$number$fileExtension');
          },
          child: Container(
            color: color,
          ),
        ),
      ),
    );
  }
}
