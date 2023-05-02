import 'package:flutter/material.dart';
import 'package:seminar4/main.dart';
import 'package:seminar4/second.dart';

class Third extends StatelessWidget {
  const Third({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Семинар 4'),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 80),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const SizedBox(
            height: 16,
          ),
          Text(text),
          const SizedBox(
            height: 16,
          ),
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Seminar4(text: text)));
              },
              child: const Text('First')),
          const SizedBox(
            height: 16,
          ),
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Second(text: text)));
              },
              child: const Text('Second'))
        ]),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
