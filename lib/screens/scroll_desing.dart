import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  const ScrollScreen({super.key});

  final boxDecoration = const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.5, 0.5],
              colors: [
                Color(0xff7aecc),
                Color(0xff50c2dd),
              ]
            )
          );

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        body: Container(
          decoration: boxDecoration,
          child: PageView(
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              children: [
          _Page1(), 
          const _Pages('Bienvenidos'),
              ],
            ),
        ));
  }
}

class _Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [_Background(), _MainContent()],
    );
  }
}

class _MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 50);

    return SafeArea(
      bottom: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 90,
          ),
          const Text(
            '11°',
            style: textStyle,
          ),
          const Text(
            'Miércoles',
            style: textStyle,
          ),
          Expanded(child: Container()),
          const Icon(
            Icons.keyboard_arrow_down_rounded,
            size: 95,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}

class _Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xff50c2dd),
        height: double.infinity,
        child: const Image(
          image: AssetImage(
            'assets/scroll-1.png',
          ),
          fit: BoxFit.cover,
        ));
  }
}

class _Pages extends StatelessWidget {
  
  const _Pages(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {

    const textStyle = TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18);

    return Stack(
      children: [
        Container(
          color: const Color(0xff50c2dd),
        ),
        Center(
          child: TextButton(
            
            onPressed: () => Navigator.pushNamed(context, 'grid-desing'),
            style: TextButton.styleFrom(
              backgroundColor: const Color(0xff0098FA),
              shape: const StadiumBorder()
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
              text, 
              style: textStyle,
              ),
            )
          ),
        )
      ],
    );
  }
}
