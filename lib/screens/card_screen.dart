import 'package:bank_ui/screens/profile_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  // ignore: non_constant_identifier_names
  List<Widget> ConSliders = [
//add your items here
    const cardCon(
      accountNum: '5399  ****  ****  ****',
      date: '05/24',
    ),
    const cardCon(
      accountNum: '3349  ****  ****  ****',
      date: '07/12',
    ),
    const cardCon(accountNum: '9123  ****  ****  ****', date: '02/11'),
  ];
  int _current = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff161E35),
      appBar: AppBar(
        backgroundColor: const Color(0xff161E35),
        leading: GestureDetector(
          onTap: () {},
          child: Image.asset(
            'images/Bottom/arrow.png',
            height: 30,
          ),
        ),
        title: Text(
          'Card',
          style: GoogleFonts.openSans(
              textStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 31)),
        ),
      ),
      body: Column(children: [
        Container(
            color: const Color(0xff080C25),
            height: 200,
            width: double.infinity,
            child: Center(
                child: CarouselSlider(
              items: ConSliders,
              options: CarouselOptions(
                  reverse: false,
                  enlargeCenterPage: true,
                  initialPage: 0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                      print(_current);
                    });
                  }),
            ))),
        Padding(
          padding: const EdgeInsets.all(35.0),
          // ignore: avoid_unnecessary_containers
          child: Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                const ProfileCon(
                  text: 'Add Card',
                ),
                const SizedBox(
                  height: 15,
                ),
                const ProfileCon(
                  text: 'Add Virtual Card',
                ),
                const SizedBox(
                  height: 15,
                ),
                const ProfileCon(
                  text: 'Add Custom Card',
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Recent Tranasaction',
                  style: GoogleFonts.openSans(
                      textStyle: const TextStyle(
                          color: Color(0xff0050E2),
                          fontWeight: FontWeight.w600,
                          fontSize: 25)),
                ),
                const SizedBox(
                  height: 30,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    TranText(),
                    SizedBox(
                      height: 15,
                    ),
                    TranText(),
                    SizedBox(
                      height: 15,
                    ),
                    TranText(),
                  ],
                )
              ])),
        )
      ]),
    );
  }
}

class TranText extends StatelessWidget {
  const TranText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Text('Lorem ipsum dolor sit amet, consectetur smod',
          maxLines: 4,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.justify,
          style: GoogleFonts.openSans(
              textStyle: const TextStyle(color: Colors.white70),
              fontWeight: FontWeight.w400,
              fontSize: 15)),
    );
  }
}

// ignore: camel_case_types
class cardCon extends StatelessWidget {
  final String accountNum;
  final String date;
  const cardCon({
    Key? key,
    required this.accountNum,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0XFFBF0000),
            Color(0XFF0F00BD),
          ],
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      // margin: EdgeInsets.only(top: 25, bottom: 25, left: 45, right: 45),
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        margin: const EdgeInsets.only(top: 50, right: 30, left: 30, bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              accountNum,
              style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 20,
              )),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'JOHN SMITH',
                  style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  )),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Text(
                      'VALID',
                      style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                      )),
                    ),
                    Text(
                      'THRU',
                      style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      )),
                    ),
                  ],
                ),
                Text(
                  '06/25',
                  style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
