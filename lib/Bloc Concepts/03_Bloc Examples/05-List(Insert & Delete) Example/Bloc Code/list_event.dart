

import 'package:equatable/equatable.dart';

abstract class ListEvent extends Equatable
{

  const ListEvent();

  @override
  List<Object?> get props => [];
}

class AddInListEvent extends ListEvent
{
  int ItemsInList;

  AddInListEvent({
    required this.ItemsInList
  });


  @override
  List<Object?> get props => [ItemsInList];
}

class RemoveFromListEvent extends ListEvent
{

  int ItemInListIndex;

  RemoveFromListEvent({
    required this.ItemInListIndex
  });


  @override
  List<Object?> get props => [ItemInListIndex];

}