// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class DesafioInstagram extends StatefulWidget {
  DesafioInstagram({super.key});

  @override
  State<DesafioInstagram> createState() => _DesafioInstagramState();
}

class _DesafioInstagramState extends State<DesafioInstagram> {
  int indice = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.add_box_outlined, size: 30),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.favorite_border, size: 30),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.messenger_outline_sharp, size: 30),
          ),
        ],
        title: const Text(
          'Instagram',
          style: TextStyle(fontSize: 25),
        ),
      ),
      bottomNavigationBar: SingleChildScrollView(
        child: BottomNavigationBar(
          backgroundColor: Colors.black,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: indice,
          onTap: (index) {
            setState(() {
              indice = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.home_filled,
                size: 30,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.search,
                size: 30,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.add_box_rounded,
                size: 30,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.favorite_rounded,
                size: 30,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.person_4_outlined,
                size: 30,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ImageAvatar(
                urlImage:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTt5WOv-1AShQtJ4-sn9z6jiiM9EZZ4Ehel4JcnvDJZtQ&s',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ImageAvatar(
                urlImage:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTt5WOv-1AShQtJ4-sn9z6jiiM9EZZ4Ehel4JcnvDJZtQ&s',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ImageAvatar(
                urlImage:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTt5WOv-1AShQtJ4-sn9z6jiiM9EZZ4Ehel4JcnvDJZtQ&s',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: ImageAvatar(
                urlImage:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTt5WOv-1AShQtJ4-sn9z6jiiM9EZZ4Ehel4JcnvDJZtQ&s',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: ImageAvatar(
                urlImage:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTt5WOv-1AShQtJ4-sn9z6jiiM9EZZ4Ehel4JcnvDJZtQ&s',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageAvatar extends StatelessWidget {
  final String urlImage;
  const ImageAvatar({super.key, required this.urlImage});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 90,
          height: 90,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.red, Colors.black],
              begin: Alignment.topCenter,
            ),
            borderRadius: BorderRadius.circular(90),
            color: Colors.red,
          ),
        ),
        Container(
          width: 90,
          height: 90,
          padding: EdgeInsets.all(4),
          child: CircleAvatar(
            backgroundImage: NetworkImage(urlImage),
          ),
        ),
        Container(
          width: 90,
          height: 90,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                'Ao Vivo',
                style: TextStyle(fontSize: 8),
              ),
            ),
          ),
        )
      ],
    );
  }
}
