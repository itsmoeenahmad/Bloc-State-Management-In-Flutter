import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterbloc/features/cart/bloc/cart_bloc.dart';
import 'package:flutterbloc/features/cart/ui/cart_tile_widget.dart';

import '../../home/ui/product_tile_widget.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  final cartBloc = CartBloc();

  @override
  void initState() {
    cartBloc.add(CartInitialEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.white,
            size: 20,
          ),
        ),
        title: Text(
          'Grocery App - Cart',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.teal,
      ),
      body: BlocConsumer<CartBloc, CartState>(
        bloc: cartBloc,
        listenWhen: (previous, current) => current is CartActionState,
        buildWhen: (previous, current) => current is! CartActionState,
        listener: (context, state) {
          if(state is CartRemoveFromCartSuccessState){
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  'Item Removed From Cart',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                backgroundColor: Colors.teal,
              ),
            );
          }
        },
        builder: (context, state) {
          switch (state) {
            case CartLoadingState():
              return Center(
                child: CircularProgressIndicator(color: Colors.teal),
              );
            case CartSuccessState():
              final successState = state;
              return ListView.builder(
                itemCount: state.cartItems.length,
                itemBuilder: (context, index) {
                  return CartTileWidget(
                    productDataModel: successState.cartItems[index],
                    cartBloc: cartBloc,
                  );
                },
              );
            default:
              return SizedBox();
          }
        },
      ),
    );
  }
}
