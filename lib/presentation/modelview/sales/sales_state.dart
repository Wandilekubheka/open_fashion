import 'package:open_fashion/data/models/sale.dart';

class SalesState {}

class InitialSalesState extends SalesState {
  final List<SaleSummary> sales;
  InitialSalesState(this.sales);
}

class LoadingSalesState extends SalesState {}

class ErrorSalesState extends SalesState {
  final String message;
  ErrorSalesState(this.message);
}
