
import 'package:equatable/equatable.dart';

class CounterState extends Equatable
{

  final int counter;

  //Counter State Class Constructor:
  const CounterState({
    this.counter=0
});

  //CopyWith Function Will be called once we update the counter value:
  CounterState copyWith({int? counter}){
    return CounterState(
      counter: counter ?? this.counter
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [counter];

}