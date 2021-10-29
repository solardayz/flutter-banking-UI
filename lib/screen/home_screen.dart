import 'package:banking/constant/banking_text_style.dart';
import 'package:banking/data/card_data.dart';
import 'package:banking/data/transaction_data.dart';
import 'package:banking/screen/transaction_card.dart';
import 'package:flutter/material.dart';

import 'my_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                height: 200,
                child: ListView.separated(
                  physics: ClampingScrollPhysics(),
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 10,
                    );
                  },
                  itemCount: myCards.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return MyCard(
                      card: myCards[index],
                    );
                  },
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Recent Transations',
                style: BankingTextSyle.BODY_TEXT,
              ),
              ListView.separated(
                itemCount: myTransactions.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) {
                  return SizedBox(height: 10);
                },
                itemBuilder: (context, index) {
                  return TransactionCard(
                    transaction: myTransactions[index],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
