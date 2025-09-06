import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_fashion/domain/repository/sales_repository.dart';
import 'package:open_fashion/presentation/modelview/sales/sales_events.dart';
import 'package:open_fashion/presentation/modelview/sales/sales_state.dart';

class SalesBloc extends Bloc<SalesEvents, SalesState> {
  final SalesRepository salesRepository;
  SalesBloc(this.salesRepository) : super(InitialSalesState([])) {
    on<LoadSalesEvent>((event, emit) async {
      emit(LoadingSalesState());
      try {
        final sales = await salesRepository.fetchNewArrivals();
        emit(InitialSalesState(sales));
      } catch (e) {
        emit(ErrorSalesState(e.toString()));
      }
    });

    on<RefreshSalesEvent>((event, emit) async {
      try {
        emit(LoadingSalesState());
        final sales = await salesRepository.fetchNewArrivals();
        emit(InitialSalesState(sales));
      } catch (e) {
        emit(ErrorSalesState(e.toString()));
      }
    });
  }
}
