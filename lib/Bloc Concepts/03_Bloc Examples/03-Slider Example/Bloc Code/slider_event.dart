

import 'package:equatable/equatable.dart';

abstract class SliderEvent extends Equatable
{

  const SliderEvent();

  @override
  List<Object?> get props => [];

}


class MoveSlider extends SliderEvent {
  double sliderValue;

  MoveSlider({required this.sliderValue});

  @override
  List<Object?> get props => [sliderValue];

}