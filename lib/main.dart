import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/ic_header.jpeg'))),
              child: Container(
                decoration: BoxDecoration(
                    gradient:
                        LinearGradient(begin: Alignment.bottomRight, colors: [
                  Colors.black.withOpacity(.8),
                  Colors.black.withOpacity(.3),
                ])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Best Hotels Ever',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 3),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search for hotels...',
                            hintStyle: TextStyle(fontSize: 17),
                            prefixIcon: Icon(
                              Icons.search,
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 40,
                    child: Text(
                      'Business Hotels',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        _hotel(
                            image: 'assets/images/ic_hotel1.jpeg',
                            title: 'Hotel 1'),
                        _hotel(
                            image: 'assets/images/ic_hotel2.jpeg',
                            title: 'Hotel 2'),
                        _hotel(
                            image: 'assets/images/ic_hotel3.jpeg',
                            title: 'Hotel 3'),
                        _hotel(
                            image: 'assets/images/ic_hotel4.jpeg',
                            title: 'Hotel 4'),
                        _hotel(
                            image: 'assets/images/ic_hotel5.jpeg',
                            title: 'Hotel 5')
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 40,
                    child: Text(
                      'Airort Hotels',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        _hotel(
                            image: 'assets/images/ic_hotel5.jpeg',
                            title: 'Hotel 1'),
                        _hotel(
                            image: 'assets/images/ic_hotel4.jpeg',
                            title: 'Hotel 2'),
                        _hotel(
                            image: 'assets/images/ic_hotel3.jpeg',
                            title: 'Hotel 3'),
                        _hotel(
                            image: 'assets/images/ic_hotel2.jpeg',
                            title: 'Hotel 4'),
                        _hotel(
                            image: 'assets/images/ic_hotel1.jpeg',
                            title: 'Hotel 5')
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 40,
                    child: Text(
                      'Resort Hotels',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        _hotel(
                            image: 'assets/images/ic_hotel3.jpeg',
                            title: 'Hotel 1'),
                        _hotel(
                            image: 'assets/images/ic_hotel2.jpeg',
                            title: 'Hotel 2'),
                        _hotel(
                            image: 'assets/images/ic_hotel1.jpeg',
                            title: 'Hotel 3'),
                        _hotel(
                            image: 'assets/images/ic_hotel2.jpeg',
                            title: 'Hotel 4'),
                        _hotel(
                            image: 'assets/images/ic_hotel1.jpeg',
                            title: 'Hotel 5')
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _hotel({String? image, title}) {
  return AspectRatio(
    aspectRatio: 1,
    child: Container(
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image!))),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
              Colors.black.withOpacity(.5),
              Colors.black.withOpacity(.3)
            ])),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  title,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.red,
                    )),
              )
            ]),
      ),
    ),
  );
}
