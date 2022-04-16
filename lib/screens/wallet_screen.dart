import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
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
        appBar: AppBar(
            backgroundColor: const Color(0xff161E35),
            leading: IconButton(
              icon: const FaIcon(Icons.arrow_back_ios_new_rounded),
              onPressed: () {},
            ),
            actions: [
              GestureDetector(
                  onTap: () {},
                  child: Image.asset('images/finance/setting.png')),
            ],
            title: Text('Transaction History',
                style: GoogleFonts.openSans(
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 31)))),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              color: const Color(0xff080C25),
              height: 160,
              width: double.infinity,
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
                            activeTrackColor: const Color(0xff0050E2),
                            activeColor: Colors.white,
                            value: isTouched,
                            onChanged: (valuee) {
                              onToggle(valuee);
                            },
                          ),
                        ],
                      ),
                    ]),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  ButtonBarSuper(
                    //  wrapType: wrapType,
                    //  wrapFit: wrapFit,
                    spacing: 5.0, // Horizontal spacing between buttons.
                    lineSpacing: 10.0, // Vertical spacing between button lines.
                    buttonHeight: 48,
                    buttonMinWidth: 90,
                    children: [
                      Container(
                        height: 107.h,
                        width: 70.w,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(
                              color: const Color(0xff3071E7),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(25)),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Select Range',
                            style: TextStyle(
                              fontSize: 35.sp,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff3071E7),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 107.h,
                        width: 70.w,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(
                              color: const Color(0xff3071E7),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(25)),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Email Statement ',
                            style: TextStyle(
                              fontSize: 35.sp,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff3071E7),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                      cursorHeight: 35,
                      style: const TextStyle(fontSize: 22),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(35),
                          ),
                          filled: true,
                          hintStyle: const TextStyle(
                              fontSize: 24, color: Color(0xffBDBDBD)),
                          hintText: "Search",
                          fillColor: const Color(0xffF6F6F6))),
                  const SizedBox(
                    height: 25,
                  ),
                  Column(children: const [
                    TranCon(
                      money: '\$20',
                    ),
                    TranCon(
                      money: '\$15',
                    ),
                    TranCon(
                      money: '\$100',
                    ),
                  ]),
                ],
              ),
            ),
          ]),
        ));
  }
}

class TranCon extends StatelessWidget {
  final String money;
  const TranCon({
    Key? key,
    required this.money,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 80,
      decoration: BoxDecoration(
          color: const Color(0xffD3D3D3),
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 30.0, right: 30, bottom: 20, top: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      '16/10/2022',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 17),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text('13:10',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 17))
                  ],
                ),
                Text(
                  money,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 17),
                ),
              ],
            ),
            const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor',
            )
          ],
        ),
      ),
    );
  }
}

class $money {}
