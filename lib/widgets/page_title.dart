import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {

  const PageTitle(this.title, this.subtitle, {super.key});

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.only(top: 30),
        margin: const EdgeInsets.only(left: 20, right: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          
            Text(title, style: const TextStyle( 
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.white
            ),),
            const SizedBox(height: 15,),
            Text(subtitle, 
              style: const TextStyle(
          
                color: Colors.white,
                fontSize: 16
          
              ),
              maxLines: 2,
            )
          
          ],
        ),
      ),
    );
  }
}
