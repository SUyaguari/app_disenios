import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _SingleCard('Home', Icons.house, Colors.blueAccent),
          _SingleCard('Alarm', Icons.access_alarm_outlined, Colors.greenAccent),
        ]),
        TableRow(children: [
          _SingleCard('Photos', Icons.add_a_photo_outlined, Colors.redAccent),
          _SingleCard('Shop', Icons.shopping_cart, Colors.pinkAccent),
        ]),
        TableRow(children: [
          _SingleCard('Entertainment', Icons.videogame_asset_outlined, Colors.orangeAccent),
          _SingleCard('Payments', Icons.currency_bitcoin_sharp, Colors.purpleAccent),
        ]),
        TableRow(children: [
          _SingleCard('Configuration', Icons.construction, Colors.indigoAccent),
          _SingleCard('Virus', Icons.coronavirus, Color.fromARGB(255, 251, 64, 173)),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  const _SingleCard(this.text, this.icon, this.color);

  final String text;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, 'basic-desing'),
      child: Container(
        margin: const EdgeInsets.all(15),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BackdropFilter(
            filter: ImageFilter.blur( sigmaX:  5, sigmaY: 5),
            child: Container(
              height: 160,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 30, 
                    backgroundColor: color,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            stops: const [0.05, 0.5],
                            colors: [
                            Colors.white,
                            color
                          ])
                        ),
                        child: Icon(icon, size: 35, color: Colors.white,),
                      ),
                    )
                  ),
                  const SizedBox(height: 20,),
                  Text(text, style: TextStyle(color: color),)
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
