import 'package:flutter/material.dart';

class TransactionModel {
  String? name;
  String? avatar;
  String? currentBalance;
  String? month;
  String? changePercentageIndicator;
  String? changePercentage;
  Color? color;

  TransactionModel(
      {this.name,
      this.avatar,
      this.currentBalance,
      this.month,
      this.changePercentageIndicator,
      this.changePercentage,
      this.color});
}

List<TransactionModel> myTransactions = [
  TransactionModel(
      name: '홍길동',
      avatar: 'assets/icons/avatar1.png',
      currentBalance: '\$5482',
      changePercentage: '0.41%',
      changePercentageIndicator: 'down',
      month: 'Jan',
      color: Colors.grey),
  TransactionModel(
      name: '김길동',
      avatar: 'assets/icons/avatar2.png',
      currentBalance: '\$5482',
      changePercentage: '0.23%',
      changePercentageIndicator: 'up',
      month: 'Mar',
      color: Colors.cyanAccent),
  TransactionModel(
      name: '이길동',
      avatar: 'assets/icons/avatar3.png',
      currentBalance: '\$657',
      changePercentage: '0.56%',
      changePercentageIndicator: 'up',
      month: 'Dec',
      color: Colors.blue),
  TransactionModel(
      name: '왕길동',
      avatar: 'assets/icons/avatar4.png',
      currentBalance: '\$3455',
      changePercentage: '0.78%',
      changePercentageIndicator: 'down',
      month: 'Jun',
      color: Colors.yellowAccent),
  TransactionModel(
      name: '윤길동',
      avatar: 'assets/icons/avatar4.png',
      currentBalance: '\$123',
      changePercentage: '0.36%',
      changePercentageIndicator: 'down',
      month: 'Aug',
      color: Colors.grey),
  TransactionModel(
      name: '감길동',
      avatar: 'assets/icons/avatar3.png',
      currentBalance: '\$342',
      changePercentage: '0.27%',
      changePercentageIndicator: 'up',
      month: 'Sep',
      color: Colors.deepPurple),
  TransactionModel(
      name: '최길동',
      avatar: 'assets/icons/avatar2.png',
      currentBalance: '\$345',
      changePercentage: '0.41%',
      changePercentageIndicator: 'down',
      month: 'Jan',
      color: Colors.amberAccent),
  TransactionModel(
      name: '남궁길동',
      avatar: 'assets/icons/avatar1.png',
      currentBalance: '\$456',
      changePercentage: '0.28%',
      changePercentageIndicator: 'down',
      month: 'Jan',
      color: Colors.red),
];
