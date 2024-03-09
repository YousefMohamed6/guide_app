import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

part 'favourite_state.dart';

class FavouriteCubit extends Cubit<FavouriteState> {
  FavouriteCubit() : super(FavouriteInitial());
  final listNameCtrl = TextEditingController();
}
