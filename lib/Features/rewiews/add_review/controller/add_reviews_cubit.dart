import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'add_reviews_state.dart';

class AddReviewsCubit extends Cubit<AddReviewState> {
  AddReviewsCubit() : super(AddReviewInitial());
  final addReviewsCtrl = TextEditingController();
}
