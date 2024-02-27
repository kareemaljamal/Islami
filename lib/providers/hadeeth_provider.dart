import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../models/hadeeth_model.dart';

class HadeethProvider extends ChangeNotifier {
  List<HadeethModel> hadeethData = [];

  loadFile() async {
    rootBundle
        .loadString("assets/files/ahadeth.txt")
        .then((hadethFile) {
      List<String> hadeeth = hadethFile.split("#");

      for (int i = 0; i < hadeeth.length; i++) {
        String hadeth = hadeeth[i];
        List<String> hadethLines =
            hadeth.trim().split("\n");
        String title = hadethLines[0];
        hadethLines.removeAt(0);
        List<String> hadethContent = hadethLines;
        hadeethData.add(HadeethModel(
            title: title, hadeethBody: hadethContent));
      }
      notifyListeners();
    });
  }
}
