import 'package:banking/constant/banking_text_style.dart';
import 'package:banking/data/card_data.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final CardModel card;
  const MyCard({Key? key, required this.card}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: 200,
      width: 350,
      decoration: BoxDecoration(
        color: card.cardColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'CARD NAME',
                    style: BankingTextSyle.MY_CARD_TITLE,
                  ),
                  Text(
                    card.cardHolderName.toString(),
                    style: BankingTextSyle.MY_CARD_SUB_TITLE,
                  ),
                ],
              ),
              Text(
                card.cardNumber.toString(),
                style: BankingTextSyle.MY_CARD_SUB_TITLE,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Text(
                        'EXP DATE',
                        style: BankingTextSyle.MY_CARD_TITLE,
                      ),
                      Text(
                        card.expDate.toString(),
                        style: BankingTextSyle.MY_CARD_SUB_TITLE,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Text(
                        'CVV NUMBER',
                        style: BankingTextSyle.MY_CARD_TITLE,
                      ),
                      Text(
                        card.cvv.toString(),
                        style: BankingTextSyle.MY_CARD_SUB_TITLE,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 50,
                height: 50,
                child: Image.asset('assets/icons/mcard.png'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
