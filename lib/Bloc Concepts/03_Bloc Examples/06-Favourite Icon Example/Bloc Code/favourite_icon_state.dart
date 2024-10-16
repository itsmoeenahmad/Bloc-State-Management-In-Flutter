

import 'package:equatable/equatable.dart';

class FavouriteIconState extends Equatable
{

  Map<int, bool> itemsList;

  FavouriteIconState({this.itemsList = const {}});



  FavouriteIconState copyWith({required Map<int, bool> items}) {
    return FavouriteIconState(itemsList: items ?? this.itemsList);
  }



  @override
  List<Object?> get props => [itemsList];

}