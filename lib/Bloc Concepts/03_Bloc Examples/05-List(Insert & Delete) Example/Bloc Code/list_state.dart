

import 'package:equatable/equatable.dart';

class ListState extends Equatable
{

  List<int> ItemsList;

  ListState({
    this.ItemsList = const []
});

  ListState copyWith({List<int>? ItemsList})
  {
    return ListState(
      ItemsList: ItemsList ?? this.ItemsList
    );
  }

  @override
  List<Object?> get props => [ItemsList];

}