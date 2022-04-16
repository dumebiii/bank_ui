import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
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
        actions: [
          GestureDetector(
              onTap: () {}, child: Image.asset('images/finance/setting.png')),
        ],
        title: Text(
          'Profile',
          style: GoogleFonts.openSans(
              textStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 31)),
        ),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            color: const Color(0xff080C25),
            height: 260,
            width: double.infinity,
            child: Stack(
              children: [
                CustomPaint(
                  child: Container(
                    height: 260,
                    width: double.infinity,
                    color: Colors.transparent,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 60,
                            backgroundColor: Colors.white,
                            child: Center(
                                child: GestureDetector(
                              onTap: () {},
                              child: Image.asset(
                                'images/Bottom/person.png',
                                height: 80,
                              ),
                            )),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'JOHN SMITH',
                            style: GoogleFonts.roboto(
                                textStyle: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 25,
                            )),
                          )
                        ],
                      ),
                    ),
                  ),
                  painter: TestPainter(),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(35.0),
            child: Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                  const ProfileCon(
                    text: 'Change Pin',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const ProfileCon(
                    text: 'Change Password',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const ProfileCon(
                    text: 'Biometric Login',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const ProfileCon(
                    text: 'Transaction Details',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const ProfileCon(
                    text: 'Card',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 60,
                    width: 130,
                    decoration: BoxDecoration(
                        color: const Color(0xff3071E7),
                        borderRadius: BorderRadius.circular(30)),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Sign Out ',
                        style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        )),
                      ),
                    ),
                  ),
                ])),
          ),
        ],
      )),
    );
  }
}

class ProfileCon extends StatelessWidget {
  final String text;
  const ProfileCon({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: GoogleFonts.openSans(
              textStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 25)),
        ),
        GestureDetector(
          onTap: () {},
          child: Image.asset(
            'images/Bottom/arrow.png',
            height: 30,
          ),
        )
      ],
    );
  }
}

class TestPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final width = size.width;
    final height = size.height;

    Path path = Path();

    path.lineTo(0, height * 0.20);
    path.lineTo(width, height);
    path.lineTo(width, 0);

    path.close();

    Paint paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
