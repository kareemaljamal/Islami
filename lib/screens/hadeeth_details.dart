import 'package:flutter/material.dart';
import 'package:islami_app/models/hadeeth_model.dart';

class HadeethDetails extends StatefulWidget {
  static const String routeName = 'hadeeth details';

  HadeethDetails({super.key});

  @override
  State<HadeethDetails> createState() =>
      _HadeethDetailsState();
}

class _HadeethDetailsState extends State<HadeethDetails> {
  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)!.settings.arguments
        as HadeethModel;

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                  'assets/images/home_background.png'))),
      child: Scaffold(
          appBar: AppBar(title: Text(model.title)),
          body: Card(
            margin: EdgeInsets.all(20),
            elevation: 12,
            color: Colors.white.withOpacity(.6),
            shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide:
                    BorderSide(color: Colors.transparent)),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    model.hadeethBody[index],
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                );
              },
              itemCount: model.hadeethBody.length,
            ),
          )),
    );
  }
}
