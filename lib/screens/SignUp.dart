import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _passwordVisible = true;
  bool remember = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff161E35),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 5.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.close,
                          color: Colors.white,
                        )),
                    Text(
                      'Sign Up',
                      style: GoogleFonts.inter(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 40)),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/signUp');
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 35.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              TextField(
                  cursorHeight: 20,
                  style: TextStyle(fontSize: 22),
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
                      hintText: "Name",
                      fillColor: Colors.white70)),
              SizedBox(
                height: 20.h,
              ),
              TextField(
                  cursorHeight: 20,
                  style: TextStyle(fontSize: 22),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
                      hintText: "Email",
                      fillColor: Colors.white70)),
              SizedBox(
                height: 20.h,
              ),
              TextField(
                  cursorHeight: 20,
                  style: TextStyle(fontSize: 22),
                  enableSuggestions: false,
                  autocorrect: false,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: _passwordVisible,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      contentPadding: EdgeInsets.all(8),
                      suffix: TextButton(
                          child: _passwordVisible
                              ? Text('Show', style: TextStyle(fontSize: 20))
                              : Text('Hide', style: TextStyle(fontSize: 20)),
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
              SizedBox(
                height: 20.h,
              ),
              TextField(
                  cursorHeight: 20,
                  style: TextStyle(fontSize: 22),
                  enableSuggestions: false,
                  autocorrect: false,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: _passwordVisible,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      contentPadding: EdgeInsets.all(8),
                      suffix: TextButton(
                          child: _passwordVisible
                              ? Text('Show', style: TextStyle(fontSize: 20))
                              : Text('Hide', style: TextStyle(fontSize: 20)),
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                textBaseline: TextBaseline.ideographic,
                children: [
                  Checkbox(
                    // value: checkedValue,
                    onChanged: (bool? value) {
                      setState(() {
                        remember = value!;
                      });
                    },
                    activeColor: remember ? Colors.white : Color(0xff161E35),
                    value: remember, //  <-- leading Checkbox
                  ),
                  Flexible(
                    child: Text(
                      'I would like to receive your newsletter and other promotional information.',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,

                      // maxLines: ,
                      // softWrap: false,
                      // overflow: TextOverflow.fade,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'PTSansNarrow',
                          fontSize: 31.0.sp),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50.h,
              ),
              Container(
                height: 97.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xff3071E7),
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
              SizedBox(
                height: 50.h,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
