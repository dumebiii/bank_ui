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
        backgroundColor: Color(0xff161E35),
        appBar: AppBar(
            backgroundColor: Color(0xff161E35),
            leading: IconButton(
              icon: FaIcon(Icons.arrow_back_ios_new_rounded),
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
        body: Column(children: [
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
                          activeTrackColor: Color(0xff0050E2),
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
          ButtonBarSuper(
            //  wrapType: wrapType,
            //  wrapFit: wrapFit,
            spacing: 2.0, // Horizontal spacing between buttons.
            lineSpacing: 10.0, // Vertical spacing between button lines.
            buttonHeight: 48,
            buttonMinWidth: 20,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 92.w),
                child: Container(
                  height: 97.h,
                  width: 20.w,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(
                        color: Color(0xff3071E7),
                        width: 0,
                      ),
                      borderRadius: BorderRadius.circular(25)),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Select Range ',
                      style: TextStyle(
                        fontSize: 35.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff3071E7),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 92.w),
                child: Container(
                  height: 97.h,
                  width: 20.w,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(
                        color: Color(0xff3071E7),
                        width: 0,
                      ),
                      borderRadius: BorderRadius.circular(25)),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Email Statement ',
                      style: TextStyle(
                        fontSize: 35.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff3071E7),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: TextField(
                cursorHeight: 20,
                style: TextStyle(fontSize: 22),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    filled: true,
                    hintStyle:
                        TextStyle(fontSize: 20, color: Color(0xffBDBDBD)),
                    hintText: "Search",
                    fillColor: Color(0xffF6F6F6))),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Column(children: [
                TranCon(),
                TranCon(),
                TranCon(),
              ])),
        ]));
  }
}

class TranCon extends StatelessWidget {
  const TranCon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      height: 100,
      decoration: BoxDecoration(
          color: Color(0xffD3D3D3), borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [Text('16/10/2022'), Text('13:10')],
              ),
              const Text('\$100'),
            ],
          ),
          Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor')
        ],
      ),
    );
  }
}
