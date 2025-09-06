import 'package:open_fashion/data/models/sale.dart';

abstract class SalesRepository {
  Future<List<SaleSummary>> fetchSales();
  Future<List<SaleSummary>> fetchNewArrivals();
  Future<List<String>> fetchTrendingTitles();
}
