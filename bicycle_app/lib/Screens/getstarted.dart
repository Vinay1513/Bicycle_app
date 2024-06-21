import 'package:bicycle_app/Screens/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
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
          children: [
            Expanded(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 340),
                          height: constraints.maxHeight * 0.2,
                          width: constraints.maxWidth * 0.3,
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: Transform.rotate(
                              angle: 90 * 3.1415926535897932 / 180,
                              child: Text(
                                "EXTREME",
                                style: GoogleFonts.allertaStencil(
                                  fontSize: 130,
                                  fontWeight: FontWeight.w400,
                                  color:
                                      const Color.fromRGBO(255, 255, 255, 0.5),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]);
                },
              ),
            )
          ],
        ),
      ),
      Positioned(
          top: 170, left: 80, child: Image.asset("assets/images/pngwing.png")),
      Positioned(
          top: 40, left: 180, child: Image.asset("assets/images/image6.png")),
      Positioned(
          top: 670,
          left: 190,
          child: Container(
            decoration: const BoxDecoration(
                color: Color.fromRGBO(36, 44, 59, 1),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(38),
                    topLeft: Radius.circular(38))),
            height: 76,
            width: 315,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()));
                    },
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color.fromRGBO(75, 76, 237, 1),
                          border: Border.all(
                              color: const Color.fromRGBO(239, 186, 51, 1),
                              width: 5)),
                      child: const Center(
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Text(
                    "Get Start",
                    style: GoogleFonts.poppins(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(255, 255, 255, 1)),
                  ),
                )
              ],
            ),
          ))
    ]));
  }
}
