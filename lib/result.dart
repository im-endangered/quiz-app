import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final VoidCallback reset;
  Result(this.finalScore, this.reset);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(30),
      child: Column(
        children: [
          Text(
            'Quiz खेल्नु भएकोमा धन्यवाद । तपाईंको अन्तिम स्कोर रहेको छ : \n',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25),
          ),
          Text(
            '$finalScore/15\n',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 40, color: Colors.blue),
          ),
          FlatButton(
            onPressed: reset,
            child: Text(
              'पुन: सुरु गर्नुहोस् ',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.purple,
          ),
        ],
      ),
    );
  }
}
