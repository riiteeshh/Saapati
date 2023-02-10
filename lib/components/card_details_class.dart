import 'package:flutter/material.dart';

class CardDetails {
  final String CardCompany;
  final String CompanyLogo;
  final Color CardColor;
  final String CardHolderName;
  final String CardNumber;

  CardDetails(this.CardCompany, this.CardHolderName, this.CardNumber,
      this.CompanyLogo, this.CardColor);
}
