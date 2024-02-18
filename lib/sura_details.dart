import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/sura_model.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = 'sura details';

  SuraDetails({super.key});

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> versus = [];

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)!.settings.arguments
        as SuraModel;
    if (versus.isEmpty) {
      LoadFile(model.index);
    }
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                  'assets/images/home_background.png'))),
      child: Scaffold(
          appBar: AppBar(title: Text(model.name)),
          body: Card(
            margin: EdgeInsets.all(20),
            elevation: 12,
            color: Colors.white.withOpacity(.8),
            shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide:
                    BorderSide(color: Colors.transparent)),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    versus[index],
                    style: GoogleFonts.elMessiri(
                        fontSize: 20, letterSpacing: .5),
                    textAlign: TextAlign.center,
                  ),
                );
              },
              itemCount: versus.length,
            ),
          )),
    );
  }

  Future<void> LoadFile(int index) async {
    String sura = await rootBundle
        .loadString('assets/files/${index + 1}.txt');
    List<String> lines = sura.split("\n");
    versus = lines;
    print(versus);
    setState(() {});
  }
}
