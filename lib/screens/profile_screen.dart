import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
      backgroundColor: Color(0xff161E35),
      appBar: AppBar(
          backgroundColor: Color(0xff161E35),
          leading: IconButton(
            icon: FaIcon(Icons.arrow_back_ios_new_rounded),
            onPressed: () {},
          ),
          actions: [
            GestureDetector(
                onTap: () {}, child: Image.asset('images/finance/setting.png')),
          ],
          title: Text('Profile',
              style: GoogleFonts.openSans(
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 31)))),
    );
  }
}
