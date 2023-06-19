import 'package:bloc/bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CounterCubit extends Cubit<int>{
  CounterCubit() : super(0);

//Incremento  
void increment(){
  if(state <10){
    emit(state +1);
  }
  else {
    Fluttertoast.showToast(msg: "Limite máximo alcanzado!",
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.BOTTOM);
  }
}

//Desincremento
void decrement(){
  if(state >0){
    emit(state -1);
  }
  else{
    Fluttertoast.showToast(msg: "Limite minimo alcanzado!",
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM);
  }
}

void reinicio() => emit(0);

}