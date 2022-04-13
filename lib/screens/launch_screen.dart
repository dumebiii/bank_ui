import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';

class Launch extends StatefulWidget {
  const Launch({Key? key}) : super(key: key);

  @override
  State<Launch> createState() => _LaunchState();
}

class _LaunchState extends State<Launch> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xff5376d6), Color(0xff000000)],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
              child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 600.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('FinTech App',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 100.sp,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w800)),
                        SizedBox(
                          height: 650.h,
                        ),
                        ButtonBarSuper(
                          //  wrapType: wrapType,
                          //  wrapFit: wrapFit,
                          spacing: 2.0, // Horizontal spacing between buttons.
                          lineSpacing:
                              10.0, // Vertical spacing between button lines.
                          buttonHeight: 48,
                          buttonMinWidth: 20,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 92.w),
                              child: Container(
                                height: 97.h,
                                width: 20.w,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(25)),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/login');
                                  },
                                  child: Text(
                                    'Log In ',
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
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(25)),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/signUp');
                                  },
                                  child: Text(
                                    'Sign Up ',
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
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //   children: [
                        //     Padding(
                        //       padding: EdgeInsets.symmetric(horizontal: 50.w),
                        //       child: Container(
                        //           height: 50,
                        //           width: 98,
                        //           child: Center(
                        //             child: const Text('Log In ',
                        //                 style: TextStyle(
                        //                     fontWeight: FontWeight.w600,
                        //                     color: Color(0xff3071E7))),
                        //           ),
                        //           decoration: BoxDecoration(
                        //               color: Colors.white,
                        //               borderRadius: BorderRadius.circular(25))),
                        //     ),
                        //     // SizedBox(
                        //     //   width: 5,
                        //     // ),
                        //     Padding(
                        //       padding: EdgeInsets.symmetric(horizontal: 50.w),
                        //       child: Container(
                        //           width: 98,
                        //           height: 50,
                        //           child: Center(
                        //             child: const Text('Sign Up ',
                        //                 style: TextStyle(
                        //                     fontWeight: FontWeight.w600,
                        //                     color: Color(0xff3071E7))),
                        //           ),
                        //           decoration: BoxDecoration(
                        //               color: Colors.white,
                        //               borderRadius: BorderRadius.circular(25))),
                        //     ),
                        //   ],
                        //)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
        ));
  }
}
