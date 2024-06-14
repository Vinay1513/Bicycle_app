import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, dynamic>> items = [
    {'img': "assets/images/cycle.png"}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.5, 0.1],
            colors: [
              Color.fromRGBO(36, 44, 59, 1),
              Color.fromRGBO(75, 76, 237, 1)
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
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
                          color: const Color.fromRGBO(255, 255, 255, 1)),
                    )),
                Container(
                    margin: const EdgeInsets.only(left: 200, top: 50),
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(75, 76, 237, 1),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: const Center(
                      child: Icon(
                        Icons.search,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ))
              ],
            ),
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 250,
                  width: 390,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.center,
                        end: Alignment.center,
                        stops: [0.5, 0.1],
                        colors: [
                          Color.fromRGBO(53, 63, 84, 0.6),
                          Color.fromRGBO(34, 40, 52, 0.6)
                        ],
                      ),
                      border:
                          Border.all(color: Color.fromRGBO(255, 255, 255, 0.2)),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
                Positioned(
                    top: 50,
                    left: 230,
                    child: Text(
                      "EXTREME",
                      style: GoogleFonts.allertaStencil(
                        fontSize: 32,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                    )),
                Positioned(
                    top: 200,
                    left: 240,
                    child: Text(
                      "30% OFF",
                      style: GoogleFonts.poppins(
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30, top: 20),
                  height: 50,
                  width: 282,
                  child: ListView.builder(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.center,
                                  end: Alignment.center,
                                  stops: [0.5, 0.1, 0.2],
                                  colors: [
                                    Color.fromRGBO(55, 182, 233, 1),
                                    Color.fromRGBO(73, 84, 237, 1),
                                    Color.fromRGBO(75, 76, 237, 1)
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(10)),
                            height: 50,
                            width: 50,
                            child: Icon(Icons.ac_unit_outlined),
                          ),
                        );
                      }),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
