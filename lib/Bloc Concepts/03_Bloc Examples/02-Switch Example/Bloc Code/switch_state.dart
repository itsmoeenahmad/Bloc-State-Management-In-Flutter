import 'package:equatable/equatable.dart';

class SwitchState extends Equatable
{

  bool switchIs;
  SwitchState({this.switchIs =  false});


  SwitchState copyWith({bool? switchValue}){
    return SwitchState(switchIs: switchValue ?? this.switchIs);
  }


  @override
  List<Object?> get props => [switchIs];

}