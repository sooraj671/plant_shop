import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

List<String> imgList = ['assets/2.png', 'assets/2.png', 'assets/2.png'];
double height = 250;

class Home extends StatelessWidget {
  Home({super.key});

  final List<Widget> imageSliders = imgList
      .map((item) => Container(
          child: Container(
              margin: EdgeInsets.all(5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Stack(
                  children: <Widget>[
                    Image.asset(item,
                        fit: BoxFit.cover, width: double.infinity),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(children: [
                        Text(
                          'Gasteria Kyoryo',
                          style: TextStyle(fontSize: 25),
                        ),
                        Text(
                          'W 300 x H 310 MM',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: height,
                        ),
                        Row(
                          children: [
                            Text(
                              'Rs. 300',
                              style: TextStyle(fontSize: 20),
                            ),
                            SizedBox(
                              width: 160,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20)),
                              child: Container(
                                color: Colors.green[900],
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.add),
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ]),
                    ),
                  ],
                ),
              ))))
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
          size: 30,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              color: Colors.black,
              size: 30,
            ),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.black,
              size: 30,
            ),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          )
        ],
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 70, 5, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Concept',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[900]),
                ),
                Text(
                  'Popular',
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  'New',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Icon(Icons.tune_rounded)],
            ),
          ),
          CarouselSlider(
            options: CarouselOptions(
              autoPlay: false,
              aspectRatio: 1.0,
              enlargeCenterPage: false,
            ),
            items: imageSliders,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.inbox), label: 'Inbox'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ]),
    );
  }
}
