import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store/cubit/product_cubit.dart';
import 'package:store/repository/products_repository.dart';
import 'package:store/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductCubit(
        ProductRepository(),
      ),
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
