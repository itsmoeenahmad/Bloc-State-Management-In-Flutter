import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterbloc/features/cart/ui/cart.dart';
import 'package:flutterbloc/features/home/bloc/home_bloc.dart';
import 'package:flutterbloc/features/home/ui/product_tile_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final homeBloc = HomeBloc();

  @override
  void initState() {
    homeBloc.add(HomeInitialEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Grocery App - Home',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.teal,
        actions: [
          IconButton(
            onPressed: () {
              homeBloc.add(HomeCartButtonNavigateEvent());
            },
            icon: Icon(Icons.shopping_cart_outlined),
            color: Colors.white,
          ),
        ],
      ),
      body: BlocConsumer<HomeBloc, HomeState>(
        bloc: homeBloc,
        listenWhen: (previous, current) => current is HomeActionState,
        buildWhen: (previous, current) => current is! HomeActionState,
        listener: (context, state) {
          if (state is HomeNavigateToCartPageActionState) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Cart()),
            );
          }
          else if (state is HomeProductItemCartedActionState) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  'Item Carted',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                backgroundColor: Colors.teal,
              ),
            );
          }
        },
        builder: (context, state) {
          switch (state) {
            case HomeLoadingState():
              return Center(
                child: CircularProgressIndicator(color: Colors.teal),
              );
            case HomeLoadedSuccessState():
              final successState = state;
              return ListView.builder(
                itemCount: state.products.length,
                itemBuilder: (context, index) {
                  return ProductTileWidget(
                    productDataModel: successState.products[index],
                    homeBloc: homeBloc,
                  );
                },
              );
            case HomeLoadedErrorState():
              return Center(
                child: Text(
                  'Error Occurred, Try Again',
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
              );
            default:
              return SizedBox();
          }
        },
      ),
    );
  }
}
