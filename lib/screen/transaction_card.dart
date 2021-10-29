import 'package:banking/constant/banking_text_style.dart';
import 'package:banking/data/transaction_data.dart';
import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  final TransactionModel transaction;
  const TransactionCard({Key? key, required this.transaction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.transparent,
                ),
                child: Image.asset(transaction.avatar.toString()),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    transaction.name.toString(),
                    style: BankingTextSyle.LIST_TITLE,
                  ),
                  Text(
                    transaction.month.toString(),
                    style: BankingTextSyle.LIST_SUB_TITLE,
                  ),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                transaction.currentBalance.toString(),
                style: BankingTextSyle.LIST_TITLE,
              ),
              Row(
                children: [
                  transaction.changePercentageIndicator.toString() == 'up'
                      ? Icon(
                          Icons.keyboard_arrow_up,
                          size: 15,
                          color: Colors.red,
                        )
                      : Icon(
                          Icons.keyboard_arrow_down,
                          size: 15,
                          color: Colors.green,
                        ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    transaction.changePercentage.toString(),
                    style: BankingTextSyle.LIST_SUB_TITLE,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
