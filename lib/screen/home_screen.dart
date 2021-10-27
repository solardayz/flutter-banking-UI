import 'package:banking/data/card_data.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return Container(
                    child: Text('CARD'),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: 10,
                  );
                },
                itemCount: myCards.length),
          ),
        ),
      ),
    );
  }
}
