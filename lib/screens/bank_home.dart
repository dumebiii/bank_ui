import 'dart:ui';

import 'package:bank_ui/screens/card_screen.dart';
import 'package:bank_ui/screens/profile_screen.dart';
import 'package:bank_ui/screens/wallet_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BankHome extends StatefulWidget {
  const BankHome({Key? key}) : super(key: key);

  @override
  State<BankHome> createState() => _BankHomeState();
}

class _BankHomeState extends State<BankHome> {
  bool isTouched = false;
  int pageIndex = 0;

  List pages = [
    const BankMain(),
    const WalletScreen(),
    const CardScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff161E35),
      // appBar: AppBar(
      //   leading: Icon(
      //     Icons.menu,
      //     color: Theme.of(context).primaryColor,
      //   ),
      //   title: Text(
      //     "Geeks For Geeks",
      //     style: TextStyle(
      //       color: Theme.of(context).primaryColor,
      //       fontSize: 25,
      //       fontWeight: FontWeight.w600,
      //     ),
      //   ),
      //   centerTitle: true,
      //   backgroundColor: Colors.white,
      // ),
      bottomNavigationBar: Container(
          height: 70,
          width: double.infinity,
          decoration: const BoxDecoration(
              color: const Color(0xff03040E),
              borderRadius: BorderRadius.only(
                topRight: const Radius.circular(30.0),
                topLeft: const Radius.circular(30.0),
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: const FaIcon(Icons.house),
                onPressed: () {
                  setState(() {
                    pageIndex = 0;
                  });
                },
                color: pageIndex == 0 ? const Color(0xff3071E7) : Colors.white,
              ),
              IconButton(
                icon: const FaIcon(Icons.account_balance_wallet),
                onPressed: () {
                  setState(() {
                    pageIndex = 1;
                  });
                },
                color: pageIndex == 1 ? const Color(0xff3071E7) : Colors.white,
              ),
              IconButton(
                icon: const FaIcon(Icons.credit_card_sharp),
                onPressed: () {
                  setState(() {
                    pageIndex = 2;
                  });
                },
                color: pageIndex == 2 ? const Color(0xff3071E7) : Colors.white,
              ),
              IconButton(
                icon: const FaIcon(Icons.person),
                onPressed: () {
                  setState(() {
                    pageIndex = 3;
                  });
                },
                color: pageIndex == 3 ? const Color(0xff3071E7) : Colors.white,
              )
            ],
          )),
      body: pages[pageIndex],
    );
  }
}

class BankMain extends StatefulWidget {
  const BankMain({Key? key}) : super(key: key);

  @override
  State<BankMain> createState() => _BankMainState();
}

class _BankMainState extends State<BankMain> {
  bool isTouched = false;
  static int bal = 100;
  String balance = bal.toString();

  onToggle(bool valuee) {
    setState(() {
      isTouched = valuee;
      balance = '****';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff161E35),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
            margin: const EdgeInsets.all(35.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  'Hello John, ',
                  style: GoogleFonts.openSans(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 25)),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                    child: Row(children: [
                  CircleAvatar(
                    radius: 17,
                    backgroundColor: Colors.white,
                    child: Center(
                      child: IconButton(
                        iconSize: 17,
                        color: const Color(0xff161E35),
                        icon: const FaIcon(Icons.person),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  IconButton(
                      iconSize: 33,
                      color: Colors.white,
                      icon: const FaIcon(Icons.notifications),
                      onPressed: () {})
                ]))
              ]),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color(0xff080C25),
                    borderRadius: BorderRadius.circular(25)),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 25,
                    left: 30,
                    right: 30,
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Balance',
                            style: GoogleFonts.roboto(
                                textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 25))),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('\$ $balance',
                                style: GoogleFonts.roboto(
                                    textStyle: const TextStyle(
                                        color: Color(0xff0050E2),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 30))),
                            Switch(
                              activeTrackColor: Color(0xff0050E2),
                              activeColor: Colors.white,
                              value: isTouched,
                              onChanged: (valuee) {
                                onToggle(valuee);
                              },
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Text("Transaction History",
                              style: GoogleFonts.openSans(
                                  textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20))),
                        ),
                      ]),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Finance',
                style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 29)),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  FinanceCon(
                    title: 'images/finance/transfer.png',
                    firsttitle: 'Tranfer',
                    secondtitle: '',
                  ),
                  FinanceCon(
                    title: 'images/finance/m_check.png',
                    firsttitle: 'Foriegn',
                    secondtitle: 'Transfer',
                    // Secondtitle: 'Transfer',
                  ),
                  FinanceCon(
                    title: 'images/finance/loan.png',
                    firsttitle: 'Loan and',
                    secondtitle: 'Investment',
                  ),
                  FinanceCon(
                    title: 'images/finance/more.png',
                    firsttitle: 'More',
                    secondtitle: '',
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Bill Payment',
                style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 29)),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  FinanceCon(
                    title: 'images/Bill/globe.png',
                    firsttitle: 'Internet',
                    secondtitle: 'Services',
                  ),
                  FinanceCon(
                    title: 'images/Bill/Vector.png',
                    firsttitle: 'Electricity',
                    secondtitle: '',
                  ),
                  FinanceCon(
                    title: 'images/Bill/movie.png',
                    firsttitle: 'Betting',
                    secondtitle: '',
                  ),
                  FinanceCon(
                    title: 'images/Bill/tevee.png',
                    firsttitle: 'Cable Tv',
                    secondtitle: '',
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  FinanceCon(
                    title: 'images/Bill/travel.png',
                    firsttitle: 'Travels and',
                    secondtitle: 'Hotel',
                  ),
                  FinanceCon(
                    title: 'images/Bill/Tax.png',
                    firsttitle: 'Tax',
                    secondtitle: '',
                    // Secondtitle: 'Transfer',
                  ),
                  FinanceCon(
                    title: 'images/Bill/TopUp.png',
                    firsttitle: 'Mobile',
                    secondtitle: 'Top up',
                  ),
                  FinanceCon(
                    title: 'images/finance/more.png',
                    firsttitle: 'More',
                    secondtitle: '',
                  ),
                ],
              )
            ])),
      )),
    );
  }
}

class FinanceCon extends StatelessWidget {
  final String title;
  final String firsttitle;
  final String? secondtitle;
  const FinanceCon({
    // ignore: non_constant_identifier_names
    Key? key,
    required this.title,
    required this.firsttitle,
    this.secondtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150.h,
        width: 130.w,
        color: const Color(0xff080C25),
        child: Column(
            //  crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {},
                child: Image.asset(
                  title,
                  //   color: Colors.transparent,
                  //   height: 10,
                  //   width: 10,
                  // ),
                ),
              ),
              const SizedBox(height: 5),
              Text(
                firsttitle,
                softWrap: true,
                maxLines: 2,
                style: const TextStyle(color: Colors.white),
              ),
              Text(
                secondtitle!,
                softWrap: true,
                maxLines: 2,
                style: const TextStyle(color: Colors.white),
              ),
              // RichText(
              //     textAlign: TextAlign.center,
              //     overflow: TextOverflow.visible,
              //     softWrap:true,
              //     text: TextSpan(children: [
              //       TextSpan(
              //         text: firsttitle,

              //         style: TextStyle(color: Colors.white),

              //         // subtitle: Richtext(
              //         //   subtitle,
              //         //   style:
              //         // ),
              //       ),
              //       TextSpan(
              //         text: Secondtitle,
              //         style: TextStyle(color: Colors.white),
              //       ),
              //     ]))
            ]));
  }
}
