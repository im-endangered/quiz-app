import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  @override
  final VoidCallback startGame;
  Welcome(this.startGame);
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: Column(
        children: [
          Text(
            'तपाईंलाई यस Quiz मा स्वागत छ। यो एप अझै निर्माण प्रक्रियामा रहेको हुनाले केही त्रुटि समस्या हुन सक्छन्। साथै अहिले सीमित प्रश्नहरू मात्र उपलब्ध छन्। समय सँग सँगै हामी यस एपलाई सुधार गर्दै लग्ने छौ। धन्यवाद। सुझाव तथा सल्लाहको लागि: pankajbhattarai50@gmail.com मा email गर्नुहोला।',
            style: TextStyle(color: Colors.black, fontSize: 22),
            textAlign: TextAlign.left,
          ),
          RaisedButton(
            onPressed: startGame,
            child: Text(
              'सुरु गर्नुहोस्',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
