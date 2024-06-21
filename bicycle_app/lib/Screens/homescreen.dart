import 'package:bicycle_app/Screens/detail.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, dynamic>> items = [
    {
      'img': "assets/images/cycle.png",
      'c1': const Color.fromRGBO(55, 182, 233, 1),
      'c2': const Color.fromRGBO(73, 84, 237, 1),
      'c3': const Color.fromRGBO(75, 76, 237, 1),
    },
    {
      'img': "assets/images/helmet.png",
      'c1': const Color.fromRGBO(255, 255, 255, 1),
      'c2': const Color.fromRGBO(161, 161, 161, 1),
      'c3': const Color.fromRGBO(255, 255, 255, 1),
    },
    {
      'img': "assets/images/hand.png",
      'c1': const Color.fromRGBO(255, 255, 255, 1),
      'c2': const Color.fromRGBO(161, 161, 161, 1),
      'c3': const Color.fromRGBO(255, 255, 255, 1),
    },
    {
      'img': "assets/images/bottle.png",
      'c1': const Color.fromRGBO(255, 255, 255, 1),
      'c2': const Color.fromRGBO(161, 161, 161, 1),
      'c3': const Color.fromRGBO(255, 255, 255, 1),
    }
  ];

  final List<Map<String, dynamic>> items2 = [
    {
      't1': "Road Bike",
      't2': "Kiross",
      'price': 599.99,
      'img': "assets/images/kiross.png",
    },
    {
      't1': "Road Bike",
      't2': "GT Bike",
      'price': 499.99,
      'img': "assets/images/road_bike.png",
    },
    {
      't1': "Mountain Bike",
      't2': "Mountain King",
      'price': 899.99,
      'img': "assets/images/cycle4.png",
    },
    {
      't1': "City Bike",
      't2': "Urban Rider",
      'price': 299.99,
      'img': "assets/images/cycle5.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.5, 0.1],
              colors: [
                Color.fromRGBO(36, 44, 59, 1),
                Color.fromRGBO(75, 76, 237, 1),
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 50, left: 18),
                    height: 83,
                    width: 200,
                    child: Text(
                      "Choose Your Bicycle",
                      style: GoogleFonts.poppins(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 50, left: 134),
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(75, 76, 237, 1),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.search,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 18, vertical: 20),
                    height: 250,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.center,
                        end: Alignment.center,
                        colors: [
                          Color.fromRGBO(53, 63, 84, 0.6),
                          Color.fromRGBO(34, 40, 52, 0.6),
                        ],
                      ),
                      border: Border.all(
                        color: const Color.fromRGBO(255, 255, 255, 0.2),
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 20,
                    child: Image.asset('assets/images/pngwing2.png'),
                  ),
                  Positioned(
                    top: 50,
                    left: 290,
                    child: Text(
                      "EXTREME",
                      style: GoogleFonts.allertaStencil(
                        fontSize: 32,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 200,
                    left: 290,
                    child: Text(
                      "30% OFF",
                      style: GoogleFonts.poppins(
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ),
                ],
              ),
              // Horizontal List
              Container(
                margin: const EdgeInsets.only(left: 30),
                height: 50,
                child: ListView.builder(
                  itemCount: items.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.center,
                            end: Alignment.center,
                            colors: [
                              items[index]['c1'],
                              items[index]['c2'],
                              items[index]['c3'],
                            ],
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 50,
                        width: 50,
                        child: Image.asset(items[index]['img']),
                      ),
                    );
                  },
                ),
              ),
              SingleChildScrollView(
                  child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10.0,
                          mainAxisSpacing: 10.0,
                        ),
                        itemCount: items2.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const DetailScreen()));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20)),
                                  border: Border.all(
                                    color:
                                        const Color.fromARGB(51, 184, 180, 180),
                                  ),
                                  gradient: const LinearGradient(
                                    begin: Alignment.center,
                                    end: Alignment.center,
                                    colors: [
                                      Color.fromRGBO(53, 63, 84, 0.6),
                                      Color.fromRGBO(34, 40, 52, 0.6),
                                    ],
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                          margin: EdgeInsets.only(top: 20),
                                          height: 140,
                                          width: 200,
                                          child: Image.asset(
                                            items2[index]['img'],
                                            fit: BoxFit.cover,
                                          )),
                                      Text(
                                        items2[index]['t1'],
                                        style: GoogleFonts.poppins(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color:
                                              Color.fromARGB(255, 70, 46, 46),
                                        ),
                                      ),
                                      Text(
                                        items2[index]['t2'],
                                        style: GoogleFonts.poppins(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: const Color.fromRGBO(
                                              255, 255, 255, 1),
                                        ),
                                      ),
                                      Text(
                                        '\$${items2[index]['price']}',
                                        style: GoogleFonts.poppins(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color: const Color.fromRGBO(
                                              195, 195, 195, 1),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ));
                        },
                      )))
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          child: Container(
        height: 80,
        decoration: BoxDecoration(
            color: const Color.fromRGBO(36, 44, 59, 1),
            boxShadow: [
              BoxShadow(
                  color: const Color.fromRGBO(36, 44, 59, 1).withOpacity(1),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3))
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                margin: EdgeInsets.only(left: 20, top: 10),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.center,
                      end: Alignment.center,
                      stops: [0.5, 0.4],
                      colors: [
                        Color.fromRGBO(55, 182, 233, 1),
                        Color.fromRGBO(75, 76, 237, 1),
                      ],
                    ),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10))),
                height: 81,
                width: 55,
                child: Image.asset("assets/images/house.png")),
            Container(
                margin: EdgeInsets.only(left: 20),
                height: 81,
                width: 55,
                child: Image.asset("assets/images/shopping-bag.png")),
            Container(
                margin: EdgeInsets.only(left: 20),
                height: 81,
                width: 55,
                child: Image.asset("assets/images/wallet-add.png")),
            Container(
                margin: EdgeInsets.only(left: 20),
                height: 81,
                width: 55,
                child: Image.asset("assets/images/user.png")),
          ],
        ),
      )),
    );
  }
}
