import 'package:flutter/material.dart';

class userTransactions{
  final String? startTime;
  final String? endTime;
  final String? date;
  final double? amount;
  final int? points;

  const userTransactions({
    @required this.startTime,
    @required this.endTime,
    @required this.date,
    @required this.amount,
    @required this.points,
  });
} 