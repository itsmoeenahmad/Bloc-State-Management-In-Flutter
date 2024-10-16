import 'package:equatable/equatable.dart';

abstract class CounterEvent extends Equatable
{

  const CounterEvent();


  @override
  // TODO: implement props
  List<Object?> get props => [];
}

//In counter App we have only two events one is increment and another is decrement.
//So,
class IncrementCounter extends CounterEvent {}

class DecrementCounter extends CounterEvent {}