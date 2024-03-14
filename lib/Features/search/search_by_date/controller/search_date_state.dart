part of 'search_date_cubit.dart';

@immutable
sealed class SearchDateState {}

final class SearchDateInitial extends SearchDateState {}

final class Week extends SearchDateState {}

final class Month extends SearchDateState {}
