import 'package:open_fashion/data/models/sale.dart';
import 'package:open_fashion/domain/repository/sales_repository.dart';

class ImpSalesRepository extends SalesRepository {
  @override
  Future<List<SaleSummary>> fetchNewArrivals() {
    final List<SaleSummary> newArrivals = [
      SaleSummary(
        id: 1,
        title: "Summer Dress",
        description: "Light and breezy summer dress.",
        price: 49.99,
        imageUrl: "lib/assets/images/sale.png",
      ),
      SaleSummary(
        id: 2,
        title: "Casual Shirt",
        description: "Comfortable casual shirt for everyday wear.",
        price: 29.99,
        imageUrl: "lib/assets/images/sale.png",
      ),
      SaleSummary(
        id: 3,
        title: "Denim Jeans",
        description: "Classic denim jeans with a modern fit.",
        price: 59.99,
        imageUrl: "lib/assets/images/sale.png",
      ),
      SaleSummary(
        id: 4,
        title: "Leather Jacket",
        description: "Stylish leather jacket for a bold look.",
        price: 199.99,
        imageUrl: "lib/assets/images/sale.png",
      ),
    ];
    return Future.value(newArrivals);
  }

  @override
  Future<List<SaleSummary>> fetchSales() {
    // TODO: implement fetchSales
    throw UnimplementedError();
  }

  @override
  Future<List<String>> fetchTrendingTitles() {
    // TODO: implement fetchTrendingTitles
    throw UnimplementedError();
  }
}
