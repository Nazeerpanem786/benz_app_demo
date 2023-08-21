import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class  MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Benz App Demo',
      home: buildHomePage('Benz Car'),
    );
  }

  Widget buildHomePage(String title) {
    const titleText = Padding(
      padding: EdgeInsets.all(20),
      child: Text(
        'Benz',
        style: TextStyle(fontSize: 30,letterSpacing: 0.5, fontWeight: FontWeight.w600),
      ),
    );

    const subTitle= Text(
      'Benz car is a merciless and famous one of loved Big Brands.'
          'Benz cars very costly.Rich people can earn it and poor cant effort its colour',
      textAlign: TextAlign.center,
      style: TextStyle(fontFamily: 'Georgia', fontSize: 25),
    );

    var stars= Row(
      children: [
        Icon(Icons.star, color: Colors.green[500],),
        Icon(Icons.star, color: Colors.green[500],),
        Icon(Icons.star, color: Colors.green[500],),
        const Icon(Icons.star, color: Colors.black),
        const Icon(Icons.star, color: Colors.black),
      ],
    );


    final ratings= Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          stars,
          Text('170 Reviews',
            style: TextStyle(
                fontSize: 20,
                fontFamily: 'Robota',
                fontWeight: FontWeight.w800,
                letterSpacing: 0.5,
                color: Colors.black),
          ),
        ],
      ),
    );

    const descTextStyle= TextStyle(
      fontWeight: FontWeight.w800,
      fontFamily: 'Robota',
      letterSpacing: 0.5,
      fontSize: 20,
      height: 2,
      color: Colors.black);
    final iconsList= DefaultTextStyle.merge(
      style: descTextStyle,
      child: Container(

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Column(
              children: [
                Icon(Icons.kitchen,color: Colors.green[500],),
                Text('prep:'),
                Text('30mins'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.timer,color: Colors.green[500],),
                Text('cook:'),
                Text('1hr'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.restaurant,color: Colors.green[500],),
                Text('feeds:'),
                Text('4.6mins'),
              ],
            ),
          ],
        ),
      ),
    );

    final leftColumn= Container(
      child: Column(
        children: [titleText, subTitle, ratings, iconsList],
      ),
    );

    final imageText= Image.asset('images/benz.jpg'); //Added Image

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Container(
          height: 600,
          child: Card(
            child: Row(
              children: [
                SizedBox(
                  width: 400,
                  child: leftColumn,
                ),
                imageText,
              ],
            ),
          ),
        ),
      ),
    );
  }

}