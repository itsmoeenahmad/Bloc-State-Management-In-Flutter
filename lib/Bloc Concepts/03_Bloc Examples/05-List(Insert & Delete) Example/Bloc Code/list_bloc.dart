import 'package:flutter_bloc/flutter_bloc.dart';
import 'list_event.dart';
import 'list_state.dart';

class ListBloc extends Bloc<ListEvent, ListState>
{

  List<int> ItemsList = [];

  ListBloc() : super(ListState()){
    on<AddInListEvent>(_addItemInList);
    on<RemoveFromListEvent>(_removeItemFromList);
  }

  _addItemInList(AddInListEvent event, Emitter<ListState> emit)
  {
    ItemsList.add(event.ItemsInList);
    emit(state.copyWith(ItemsList: List.from(ItemsList)));
  }

  _removeItemFromList(RemoveFromListEvent event, Emitter<ListState> emit)
  {
    ItemsList.remove(event.ItemInListIndex);
    emit(state.copyWith(ItemsList: List.from(ItemsList)));
  }

}