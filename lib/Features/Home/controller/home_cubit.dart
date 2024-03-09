import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  bool isTours = true;
  void _setState() {
    emit(HomeInitial());
  }

  void selectTours() {
    isTours = true;
    _setState();
  }
  void selectPrivateTours() {
    isTours = false;
    _setState();
  }
}
