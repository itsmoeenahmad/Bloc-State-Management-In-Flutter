import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutterbloc/data/cart_items.dart';
import 'package:flutterbloc/data/grocery_data.dart';
import 'package:flutterbloc/features/home/model/product_data_model.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitialState()) {
    on<HomeInitialEvent>(homeInitialEvent);
    on<HomeProductCartButtonClickedEvent>(homeProductCartButtonClickedEvent);
    on<HomeCartButtonNavigateEvent>(homeCartButtonNavigateEvent);
  }

  FutureOr<void> homeInitialEvent(
    HomeInitialEvent event,
    Emitter<HomeState> emit,
  ) async {
    // initially loading
    emit(HomeLoadingState());

    // await - in real api call or fetching data from the server/db/firebase
    await Future.delayed(Duration(seconds: 3));

    // returning the products
    emit(
      HomeLoadedSuccessState(
        products: GroceryData.groceryProducts
            .map(
              (item) => ProductDataModel(
                id: item['id'],
                name: item['name'],
                description: item['description'],
                price: item['price'],
                imageUrl: item['imageUrl'],
              ),
            )
            .toList(),
      ),
    );
  }

  FutureOr<void> homeProductCartButtonClickedEvent(
    HomeProductCartButtonClickedEvent event,
    Emitter<HomeState> emit,
  ) {
    cartItems.add(event.clickedProduct);
    emit(HomeProductItemCartedActionState());
  }

  FutureOr<void> homeCartButtonNavigateEvent(
    HomeCartButtonNavigateEvent event,
    Emitter<HomeState> emit,
  ) {
    emit(HomeNavigateToCartPageActionState());
  }
}
