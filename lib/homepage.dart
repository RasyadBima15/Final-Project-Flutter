import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: AppBar(title: const Text('Hi, Rasyy!'), actions: [
              CircleAvatar(
                backgroundImage: AssetImage('images/foto_rasyy.png'),
              )
            ]),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 0, 0),
              child: Text(
                "Foto Favorit Rasyad",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  scrollview(imagePath: 'images/image1.jpeg'),
                  scrollview(imagePath: 'images/image2.jpeg'),
                  scrollview(imagePath: 'images/image3.jpeg'),
                  scrollview(imagePath: 'images/image4.jpeg'),
                  scrollview(imagePath: 'images/image5.jpeg'),
                ],
              ),
            )
          ],
        ));
  }
}

class scrollview extends StatelessWidget {
  final String imagePath;

  const scrollview({
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10),
      ),
      width: 300,
      height: 500,
      margin: const EdgeInsets.only(right: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
