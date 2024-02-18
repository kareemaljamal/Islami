import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IslamiAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      title: Text(
        "إسلامي",
        style: GoogleFonts.elMessiri(
            fontWeight: FontWeight.w700, fontSize: 30),
      ),
      centerTitle: true,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
