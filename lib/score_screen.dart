import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ScoreScreen extends StatefulWidget {
  int result;
  int maximum;

  ScoreScreen({Key key, @required this.result, @required this.maximum})
      : super(key: key);

  @override
  _ScoreScreenState createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff374952),
        title: Image(
          image: AssetImage('lib/assets/logo_small.png'),
        ),
        centerTitle: true,
      ),
      body: Column(children: [
        Expanded(
          child: Column(
            children: [
              SizedBox(
                height: 113,
              ),
              Text(
                'Você Acertou:',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    '${widget.result}',
                    style: TextStyle(
                        fontSize: 80,
                        fontWeight: FontWeight.w800,
                        color: Color(0xffDA0175)),
                  ),
                  Text(
                    '/ ${widget.maximum}',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF374952),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Container(
          height: 87,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.25),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: Offset(0, -1)),
            ],
          ),
          child: Center(
            child: FlatButton(
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: Text(
                'Jogar Novamente',
                style: TextStyle(fontSize: 16),
              ),
              color: Color(0xffDA0175),
              textColor: Color(0xFFF7F7F7),
              padding: EdgeInsets.fromLTRB(60, 11, 60, 11),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
