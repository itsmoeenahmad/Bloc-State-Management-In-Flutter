import 'package:equatable/equatable.dart';

class FavouriteIconEvent extends Equatable
{

  const FavouriteIconEvent();

  @override
  List<Object?> get props => [];

}


class onClickFavouriteIcon extends FavouriteIconEvent
{

  final int onClickIndexIs;

  onClickFavouriteIcon({required this.onClickIndexIs});

  @override
  List<Object?> get props => [onClickIndexIs];

}