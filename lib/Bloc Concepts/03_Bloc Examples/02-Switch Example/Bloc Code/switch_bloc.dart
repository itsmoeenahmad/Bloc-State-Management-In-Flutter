

import 'package:bloc/bloc.dart';
import 'package:learning_bloc/Bloc%20Concepts/03_Bloc%20Examples/02-Switch%20Example/Bloc%20Code/switch_event.dart';
import 'package:learning_bloc/Bloc%20Concepts/03_Bloc%20Examples/02-Switch%20Example/Bloc%20Code/switch_state.dart';

class SwitchBloc extends Bloc<SwitchEvent, SwitchState>
{

  SwitchBloc() : super(SwitchState()){
    on<EnableOrDisableSwitch>(_enableOrDisableSwitch);
  }


  _enableOrDisableSwitch(SwitchEvent event, Emitter<SwitchState> emit)
  {
    emit(state.copyWith(switchValue: !state.switchIs));
  }

}