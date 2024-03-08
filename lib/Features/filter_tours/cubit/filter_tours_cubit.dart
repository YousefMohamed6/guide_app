import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'filter_tours_state.dart';

class FilterToursCubit extends Cubit<FilterToursState> {
  FilterToursCubit() : super(FilterToursInitial());
}
