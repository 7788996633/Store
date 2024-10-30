part of 'product_cubit.dart';

@immutable
sealed class ProductState {}

final class ProductInitial extends ProductState {}

final class ProductSuccess extends ProductState {
  final List<Product> pr;

  ProductSuccess({required this.pr});
}

final class ProductLoading extends ProductState {}

final class ProductFail extends ProductState {
  final String errmsg;

  ProductFail({required this.errmsg});
}
