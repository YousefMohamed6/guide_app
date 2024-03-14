import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'show_reviews_state.dart';

class ShowReviewsCubit extends Cubit<ShowReviewsState> {
  ShowReviewsCubit() : super(ShowReviewsInitial());
}
