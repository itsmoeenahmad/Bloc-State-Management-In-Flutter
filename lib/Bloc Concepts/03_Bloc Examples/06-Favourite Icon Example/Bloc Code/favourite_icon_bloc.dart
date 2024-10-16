import 'package:bloc/bloc.dart';
import 'favourite_icon_event.dart';
import 'favourite_icon_state.dart';

class FavouriteBloc extends Bloc<FavouriteIconEvent, FavouriteIconState>
{

  FavouriteBloc() : super(FavouriteIconState())
  {
    on<onClickFavouriteIcon>(_onToggleFavorite);
  }


  void _onToggleFavorite(onClickFavouriteIcon event, Emitter<FavouriteIconState> emit) {
    //Getting the current index of the favorite map
    final updatedFavorites = Map<int, bool>.from(state.itemsList);

    //Toggle the favorite status for the clicked item
    if (updatedFavorites.containsKey(event.onClickIndexIs)) {
      updatedFavorites[event.onClickIndexIs] = !updatedFavorites[event.onClickIndexIs]!;
    } else {
      updatedFavorites[event.onClickIndexIs] = true; // If not present, set it as favorite
    }

    // Emit the new state with the updated map
    emit(state.copyWith(items: updatedFavorites));
  }


}