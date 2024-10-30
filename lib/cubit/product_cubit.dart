// ignore_for_file: avoid_print

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:store/repository/products_repository.dart';

import '../models/product.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit(this.productRepository) : super(ProductInitial());

  final ProductRepository productRepository;
  void getAllPro() {
    emit(ProductLoading());
    try {
      productRepository.getAllProducts().then(
        (value) {
          emit(
            ProductSuccess(pr: value),
          );
        },
      );
    } on Exception catch (e) {
      emit(
        ProductFail(
          errmsg: e.toString(),
        ),
      );
    }
  }
}
