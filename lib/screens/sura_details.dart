import 'package:flutter/material.dart';
import 'package:islami_app/models/sura_model.dart';
import 'package:islami_app/providers/sura_provider.dart';
import 'package:provider/provider.dart';

import '../providers/main_provider.dart';
import '../utils/my_theme.dart';

class SuraDetails extends StatelessWidget {
  static const String routeName = 'sura details';

  SuraDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MainProvider>(context);
    var model = ModalRoute.of(context)!.settings.arguments
        as SuraModel;
    return ChangeNotifierProvider<SuraProvider>(
      create: (context) =>
          SuraProvider()..LoadFile(model.index),
      builder: (context, child) {
        var suraprovider =
            Provider.of<SuraProvider>(context);
        return Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                      provider.getBackgroundImage()))),
          child: Scaffold(
              appBar: AppBar(
                  title: Text(
                model.name,
                style:
                    Theme.of(context).textTheme.bodyLarge,
              )),
              body: Card(
                margin: EdgeInsets.all(20),
                elevation: 12,
                color: Colors.white.withOpacity(.8),
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                        color: Colors.transparent)),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        suraprovider.versus[index],
                        style: MyThemeData.lightTheme
                            .textTheme.bodyMedium,
                        textAlign: TextAlign.center,
                      ),
                    );
                  },
                  itemCount: suraprovider.versus.length,
                ),
              )),
        );
      },
    );
  }
}
