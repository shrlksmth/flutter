import 'package:flutter_bloc/flutter_bloc.dart';
part 'counter_events.dart';

class CounterBloc extends Bloc<CounterEvents, int>{
  CounterBloc() : super(0){
    on<CounterIncremented>((event, emit){
      emit(state+1);
    });
    on<CounterDecremented>((event, emit){
      if(state < 1){
        return;
      }
      emit(state-1);
    });
  }
}