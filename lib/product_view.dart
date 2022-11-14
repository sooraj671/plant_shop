import 'package:flutter/material.dart';

import 'bottom_bar.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Scaffold(
          backgroundColor: Color(0xfff0f2fb),
          appBar: AppBar(
            leading: IconButton(
              onPressed: Navigator.of(context).pop,
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
            actions: [
              Icon(
                Icons.favorite,
                color: Colors.green,
                size: 30,
              ),
              Padding(padding: EdgeInsets.all(10))
            ],
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
          body: Column(
            children: [
              Container(
                child: Image.asset('assets/1.png'),
              ),
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Astrophythum',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 150,
                            ),
                            Text(
                              'Rs 300',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Quantity: 1',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          'SELECT POT',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                child: Image.asset('assets/pot1.png')),
                            ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                child: Image.asset('assets/pot2.png')),
                            ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                child: Image.asset('assets/pot2.png')),
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          'Description',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'This is the descirption of the plant, it is of 300rs and it is green in color. We do not offer refund policy nor any exchange policy. This is the descirption of the plant, it is of 300rs and it is green in color.',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        FloatingActionButton.extended(
                          label: Text('ADD TO CART'), // <-- Text
                          backgroundColor: Colors.black,
                          icon: Icon(
                            // <-- Icon
                            Icons.lock,
                            size: 24.0,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
