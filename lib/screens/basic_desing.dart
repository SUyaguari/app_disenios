import 'package:flutter/material.dart';

class BasicDesingScreen extends StatelessWidget {
  const BasicDesingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image(
              image: AssetImage('assets/astrom.jpg'),
              width: double.infinity,
              height: 280,
              fit: BoxFit.cover,
            ),
            _Title(),
            _ButtomSection(),
            SizedBox(height: 25),
            _Paragraph('Sit amet voluptate ullamco exercitation cupidatat officia esse nulla cupidatat incididunt non ex culpa. Proident sunt labore est est aliquip. Velit incididunt laborum elit qui deserunt mollit esse anim aute laborum in consequat. Dolore velit dolor fugiat dolor voluptate labore consectetur aute. Ea ea sit non exercitation aliquip adipisicing culpa officia ut sunt velit quis quis. Ullamco sit dolore aliquip commodo culpa. Irure esse quis ipsum ullamco veniam sint deserunt velit quis occaecat consectetur duis.',),
            _Paragraph('Enim sit minim reprehenderit Lorem culpa sit proident enim. Do exercitation laborum cillum esse non ipsum id ea. Fugiat et consectetur velit fugiat culpa eu pariatur adipisicing Lorem duis. Magna amet voluptate ea dolor aliquip officia officia deserunt qui. Enim eu id excepteur proident commodo cillum occaecat fugiat elit dolore anim consectetur ipsum.'),
            _Paragraph('Pariatur ut aute velit consequat voluptate ullamco ad laboris incididunt fugiat duis et aliquip labore. Irure mollit nostrud adipisicing excepteur deserunt. Consequat culpa magna aute elit fugiat ex anim do id incididunt quis. Minim aute laborum id irure aute do id ullamco proident qui reprehenderit anim Lorem. Dolore velit sit labore qui enim sunt id excepteur adipisicing labore proident. Ea veniam dolore labore tempor aute labore exercitation. Incididunt esse minim officia laborum sint.'),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}

class _Paragraph extends StatelessWidget {

  const _Paragraph( this.text );

  final String text;
  
  @override
  Widget build(BuildContext context) {
    

    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Text( text,
          textAlign: TextAlign.justify,
        ));
  }
}

class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
      child: Row(
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Okineas Lake Campground',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Cuenca, Ecuador',
                style: TextStyle(color: Colors.black45),
              ),
            ],
          ),
          Expanded(child: Container()),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41')
        ],
      ),
    );
  }
}

class _ButtomSection extends StatelessWidget {
  const _ButtomSection();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 60, vertical: 5),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _CustomButtom('CALL', Icons.call),
          _CustomButtom('ROUTE', Icons.directions),
          _CustomButtom('SHARE', Icons.share),
        ],
      ),
    );
  }
}

class _CustomButtom extends StatelessWidget {
  const _CustomButtom(this.text, this.icon);

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 30,
        ),
        Text(
          text,
          style: const TextStyle(color: Colors.blue),
        )
      ],
    );
  }
}
