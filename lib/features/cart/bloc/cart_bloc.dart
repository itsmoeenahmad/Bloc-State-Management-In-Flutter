import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutterbloc/data/cart_items.dart';
import 'package:flutterbloc/features/home/model/product_data_model.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitial()) {
    on<CartInitialEvent>(cartInitialEvent);
    on<CartRemoveFromCartEvent>(cartRemoveFromCartEvent);
  }

  FutureOr<void> cartInitialEvent(
    CartInitialEvent event,
    Emitter<CartState> emit,
  ) async {
    // initially loading
    emit(CartLoadingState());

    // await - in real api call or fetching data from the server/db/firebase
    await Future.delayed(Duration(seconds: 3));

    // returning the products
    emit(CartSuccessState(cartItems: cartItems));
  }

  FutureOr<void> cartRemoveFromCartEvent(
    CartRemoveFromCartEvent event,
    Emitter<CartState> emit,
  ) {
    // Removing the current clicked item/product from the cart product list
    cartItems.remove(event.productDataModel);

    // showing a scaffold message
    emit(CartRemoveFromCartSuccessState());

    // rebuilding the ui
    emit(CartSuccessState(cartItems: cartItems));
  }
}
