import 'package:banking/constant/colors.dart';
import 'package:flutter/material.dart';

class CardModel {
  String? cardHolderName;
  String? cardNumber;
  String? expDate;
  String? cvv;
  Color? cardColor;

  CardModel(
      {this.cardHolderName,
      this.cardNumber,
      this.expDate,
      this.cvv,
      this.cardColor});
}

List<CardModel> myCards = [
  CardModel(
      cardHolderName: "John Doe",
      cardNumber: "**** **** **** 1234",
      expDate: "12/22",
      cvv: "**2",
      cardColor: kPrimaryColor),
  CardModel(
      cardHolderName: "JAY K",
      cardNumber: "**** **** **** 3333",
      expDate: "12/25",
      cvv: "**6",
      cardColor: kSecondaryColor)
];
