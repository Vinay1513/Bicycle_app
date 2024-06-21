import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShoppingScreen extends StatefulWidget {
  const ShoppingScreen({super.key});

  @override
  State<ShoppingScreen> createState() => _ShoppingScreenState();
}

class _ShoppingScreenState extends State<ShoppingScreen> {
  final List<Map<String, dynamic>> items2 = [
    {
      't1': "GT Bike",
      'price': 2599.99,
      'img': "assets/images/kiross.png",
    },
    {
      't1': "Helmet",
      'price': 125.99,
      'img': "assets/images/hel2.png",
    },
    {
      't1': "Bottle",
      'price': 115.99,
      'img': "assets/images/bottle2.png",
    },
  ];

  final List<Map<String, String>> items3 = [
    {"label": "Subtotal", "value": "2841.99"},
    {"label": "Delivery fee", "value": "0"},
    {"label": "Discount", "value": "30%"},
    {"label": "Total", "value": "1989.37"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.5, 0.1],
                colors: [
                  Color.fromRGBO(36, 44, 59, 1),
                  Color.fromRGBO(30, 30, 30, 1),
                ],
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 18,
            child: Text(
              "My Shopping Cart",
              style: GoogleFonts.poppins(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                color: const Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 360,
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.center,
                    stops: [0.8, 0.5, 0.2],
                    colors: [
                      Color.fromRGBO(55, 182, 233, 1),
                      Color.fromRGBO(72, 92, 236, 1),
                      Color.fromRGBO(75, 76, 237, 1)
                    ],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: const Center(
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 100,
            left: 340,
            child: RotatedBox(
              quarterTurns: 1,
              child: Text(
                "EXTREME",
                style: GoogleFonts.allertaStencil(
                  fontSize: 130,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(255, 255, 255, 0.2),
                ),
              ),
            ),
          ),
          SingleChildScrollView(
              child: Column(
            children: [
              SizedBox(height: 120),
              SizedBox(
                height: 450,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: items2.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Container(
                        height: 143,
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 30),
                              height: 108,
                              width: 140,
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  begin: Alignment.center,
                                  end: Alignment.center,
                                  stops: [0.5, 0.2],
                                  colors: [
                                    Color.fromRGBO(53, 63, 84, 0.6),
                                    Color.fromRGBO(34, 40, 52, 0),
                                  ],
                                ),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(15)),
                                border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 173, 172, 172),
                                  width: 2,
                                ),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black26,
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(0, 3),
                                  )
                                ],
                              ),
                              child: Center(
                                child: Image.asset(items2[index]['img']),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    items2[index]['t1'],
                                    style: GoogleFonts.poppins(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '\$${items2[index]['price']}',
                                    style: GoogleFonts.poppins(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color:
                                          const Color.fromRGBO(55, 182, 233, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 40, right: 30),
                              height: 31,
                              width: 67,
                              decoration: const BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black26,
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6)),
                                  color: Color.fromRGBO(30, 30, 30, 0.8)),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                        height: 23,
                                        width: 23,
                                        decoration: const BoxDecoration(
                                            gradient: LinearGradient(
                                              begin: Alignment.center,
                                              end: Alignment.center,
                                              stops: [0.5, 0.4],
                                              colors: [
                                                Color.fromRGBO(55, 182, 233, 1),
                                                Color.fromRGBO(75, 76, 237, 1),
                                              ],
                                            ),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5))),
                                        child: const Center(
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ),
                                        )),
                                    Text(
                                      "1",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    Container(
                                        height: 23,
                                        width: 23,
                                        decoration: const BoxDecoration(
                                            gradient: LinearGradient(
                                              begin: Alignment.center,
                                              end: Alignment.center,
                                              stops: [0.5, 0.4],
                                              colors: [
                                                Color.fromRGBO(
                                                    255, 255, 255, 0.8),
                                                Color.fromRGBO(
                                                    195, 195, 195, 0.2),
                                              ],
                                            ),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5))),
                                        child: const Center(
                                          child: Icon(
                                            Icons.remove,
                                            color: Colors.white,
                                          ),
                                        ))
                                  ]),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Text(
                  "Your Bag Qualifies for Free Shipping",
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: const Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 410,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(36, 44, 59, 0.6),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  border: Border.all(
                    color: const Color.fromRGBO(0, 0, 0, 0.3),
                    width: 2,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        "6Affg5",
                        style: GoogleFonts.poppins(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(142, 142, 142, 1),
                        ),
                      ),
                    ),
                    Container(
                      height: 44,
                      width: 137,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.center,
                          end: Alignment.center,
                          stops: [0.5, 0.4],
                          colors: [
                            Color.fromRGBO(55, 182, 233, 1),
                            Color.fromRGBO(75, 76, 237, 1),
                          ],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Center(
                        child: Text(
                          "Apply",
                          style: GoogleFonts.poppins(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                height: 100,
                width: double.maxFinite,
                child: ListView.builder(
                  itemCount: items3.length,
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          items3[index]['label']!,
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                        Text(
                          "\$${items3[index]['value']}",
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(55, 182, 233, 1),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              Container(
                height: 30,
                width: 136,
                child: Row(
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.center,
                          end: Alignment.center,
                          stops: [0.5, 0.4],
                          colors: [
                            Color.fromRGBO(55, 182, 233, 1),
                            Color.fromRGBO(75, 76, 237, 1),
                          ],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      "Check Out",
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
