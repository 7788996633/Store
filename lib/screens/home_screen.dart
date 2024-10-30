import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store/cubit/product_cubit.dart';
import 'package:store/models/product.dart';
import 'package:store/widgets/product_iem.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    BlocProvider.of<ProductCubit>(context).getAllPro();
    super.initState();
  }

  List<Product> p = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.all(13),
        child: BlocBuilder<ProductCubit, ProductState>(
          builder: (context, state) {
            if (state is ProductSuccess) {
              p = state.pr;
              return GridView.builder(
                itemCount: p.length,
                itemBuilder: (context, index) => ProductItem(
                  curreProduct: p[index],
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
              );
            } else if (state is ProductFail) {
              return Center(
                child: Text(state.errmsg),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
