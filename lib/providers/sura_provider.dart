import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SuraProvider extends ChangeNotifier {
  List<String> versus = [];

  Future<void> LoadFile(int index) async {
    String sura = await rootBundle
        .loadString('assets/files/${index + 1}.txt');
    List<String> lines = sura.split("\n");
    versus = lines;
    print(versus);

    notifyListeners();
  }
}
