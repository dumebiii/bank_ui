// ignore: file_names
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _passwordVisible = true;
  bool remember = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff161E35),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  'Log In',
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 40)),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                    cursorHeight: 20,
                    style: const TextStyle(fontSize: 22),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        filled: true,
                        hintStyle:
                            const TextStyle(fontSize: 20, color: Colors.grey),
                        hintText: "Email",
                        fillColor: Colors.white70)),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                    cursorHeight: 20,
                    style: const TextStyle(fontSize: 22),
                    enableSuggestions: false,
                    autocorrect: false,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: _passwordVisible,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        contentPadding: const EdgeInsets.all(8),
                        suffix: TextButton(
                            child: _passwordVisible
                                ? const Text('Show',
                                    style: TextStyle(fontSize: 20))
                                : const Text('Hide',
                                    style: TextStyle(fontSize: 20)),
                            onPressed: () {
                              setState(() {
                                _passwordVisible = !_passwordVisible;
                              });
                            }),
                        filled: true,
                        hintStyle:
                            const TextStyle(fontSize: 20, color: Colors.grey),
                        hintText: "Password",
                        fillColor: Colors.white70)),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.r),
                child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Checkbox(
                              // value: checkedValue,
                              onChanged: (bool? value) {
                                setState(() {
                                  remember = value!;
                                });
                              },
                              activeColor: remember
                                  ? Colors.white
                                  : const Color(0xff161E35),
                              value: remember, //  <-- leading Checkbox
                            ),
                            Text(
                              'Remember login',
                              style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                      color: Color(0xffCCCCCC),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 19)),
                            ),
                          ],
                        ),
                      ),
                      // SizedBox(
                      //   width: 85.w,
                      // ),
                      Text(
                        'Login with fingerprints',
                        style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                                color: Color(0xffCCCCCC),
                                fontWeight: FontWeight.w400,
                                fontSize: 19)),
                      ),
                    ]),
              ),
              SizedBox(
                height: 50.h,
              ),
              RichText(
                text: TextSpan(
                    text: 'Don\'t have an account?',
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                    children: <TextSpan>[
                      TextSpan(
                          text: ' Sign up',
                          style: const TextStyle(
                              color: Colors.blueAccent, fontSize: 18),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // navigate to desired screen
                            })
                    ]),
              ),
              SizedBox(
                height: 50.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Container(
                  height: 97.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color(0xff3071E7),
                      borderRadius: BorderRadius.circular(25)),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Log In',
                      style: TextStyle(
                        fontSize: 35.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              TextButton(
                onPressed: () {},
                child: Text('Forgot your password?',
                    style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            color: Color(0xffCCCCCC),
                            fontWeight: FontWeight.w400,
                            fontSize: 19))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
