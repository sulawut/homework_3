import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _GuessPageState createState() => _GuessPageState();
}

class _GuessPageState extends State<MyHomePage> {
  var _input = '';

  Widget _buildNumberButton(int num) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 60.0,
          height: 30.0,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            border: Border.all(
              color: Color(0xFFCCCCCC),
              width: 1.0,
            ),
          ),
          child: Text(
            num.toString(),
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.purple)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/guess_logo.png', width: 90.0),
              SizedBox(width: 10.0),
              Column(
                children: [
                  Text('GUESS',
                      style: TextStyle(
                          fontSize: 35.0,color: Colors.purple[200])),
                  Text('THE NUMBER',
                      style: TextStyle(
                          fontSize: 18.0,color: Colors.purple)),
                ],
              ),
            ],
          ),
          SizedBox(height: 100.0),
          Text('เลข'),
          Text('ทายเลข 1 ถึง 100'),
          SizedBox(height: 20.0),
          Column(
            children: [
              for (var row in [
                [1, 2, 3],
                [4, 5, 6],
                [7, 8, 9],
              ])
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [for (var i in row) _buildNumberButton(i)],
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildNumberButton(2),
                  _buildNumberButton(0),
                  _buildNumberButton(-1),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

}