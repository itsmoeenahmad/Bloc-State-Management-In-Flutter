

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_bloc/Bloc%20Concepts/03_Bloc%20Examples/03-Slider%20Example/Bloc%20Code/slider_event.dart';
import 'package:learning_bloc/Bloc%20Concepts/03_Bloc%20Examples/03-Slider%20Example/Bloc%20Code/slider_state.dart';

class SliderBloc extends Bloc<SliderEvent, SliderState>
{
  
  SliderBloc():  super(SliderState()){
    on<MoveSlider>(_moveSlider);
  }


  _moveSlider(MoveSlider event, Emitter<SliderState> emit)
  {
    emit(state.copyWith(sliderValue: event.sliderValue));
  }
}