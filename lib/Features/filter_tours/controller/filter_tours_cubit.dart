import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'filter_tours_state.dart';

class FilterToursCubit extends Cubit<FilterToursState> {
  FilterToursCubit() : super(FilterToursInitial());
  bool isArabic = false;
  bool isEnglish = false;
  bool isFrench = false;
  bool isSpanish = false;
  bool isWalking = false;
  bool isFoodAndDrink = false;
  bool isDayTrip = false;
  bool isBusTour = false;
  bool isBikeTour = false;
  bool isCruises = false;
  bool isNightLife = false;
  void setState() {
    emit(FilterToursInitial());
  }
}
