import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.yellow[600],
                image: DecorationImage(
                    scale: 3,
                    colorFilter: new ColorFilter.mode(
                        Colors.black.withOpacity(0.2), BlendMode.dstATop),
                    image: AssetImage('assets/bg.jpg'),
                    repeat: ImageRepeat.repeat))),
        Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Lego Deals',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.red[900],
            leading: IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                onPressed: () {}),
          ),
          backgroundColor: Colors.transparent,
          body: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ProductContainer(
                    image: 'assets/placeholder.jpg',
                  ),
                  ProductContainer(
                    image: 'assets/placeholder2.jpg',
                  ),
                  ProductContainer(
                    image: 'assets/placeholder3.jpg',
                  ),
                  ProductContainer(
                    image: 'assets/placeholder4.jpg',
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ProductContainer extends StatelessWidget {
  final image;

  const ProductContainer({Key key, @required this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 5,
                spreadRadius: 1,
              )
            ],
            borderRadius: BorderRadius.circular(20.0)),
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: Image.asset(this.image)),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      'Formula E Panasonic Jaguar Racing GEN2 car & Jaguar I-Pace',
                      minFontSize: 15,
                      overflow: TextOverflow.ellipsis,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                      maxLines: 2,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'vor 17 Stunden',
                      style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    AutoSizeText(
                      'Gab es noch nie so gunstig auf Amazon. Guter Preis fur das Set.',
                      minFontSize: 12,
                      maxFontSize: 12,
                      maxLines: 2,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text('EOL: in Ferne'),
                    Text(
                      '#76898',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '\$28,0',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 22),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '\$25,0',
                              style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: _legoLargeButton(),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _legoLargeButton() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              offset: Offset(0, 5),
              color: Colors.black12,
              blurRadius: 15.0,
            )
          ]),
          child: Image.asset(
            'assets/lego.png',
            width: 80,
          ),
        ),
        Positioned(
          bottom: 10,
          child: Text(
            'Zu Amazon.de',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11),
          ),
        )
      ],
    );
  }
}
