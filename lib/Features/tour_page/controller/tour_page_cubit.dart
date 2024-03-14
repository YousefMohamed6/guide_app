import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'tour_page_state.dart';

class TourPageCubit extends Cubit<TourPageState> {
  TourPageCubit() : super(TourPageInitial());
  bool isDecrebitionShow = false;
  bool isTourTypeShow = false;
  bool isItineraby = false;
  bool isMeetingPointerShow = false;
  bool isTransportationShow = false;
  bool isIncludedShow = false;
  bool isExcludedShow = false;
  bool isLocalCashShow = false;
  //for tour type
  bool isWalking = false;
  bool isFoodAndDrink = false;
  bool isDayTrip = false;
  bool isBusTour = false;
  bool isBikeTour = false;
  bool isCruises = false;
//for teanportation
  bool isBus = true;
  bool isCar = false;
  void _setState() {
    emit(TourPageInitial());
  }

  void showDescrebtion() {
    isDecrebitionShow = !isDecrebitionShow;
    _setState();
  }

  void showTourType() {
    isTourTypeShow = !isTourTypeShow;
    _setState();
  }

  void showItineraby() {
    isItineraby = !isItineraby;
    _setState();
  }

  void showMeetingPointer() {
    isMeetingPointerShow = !isMeetingPointerShow;
    _setState();
  }

  void showTransportation() {
    isTransportationShow = !isTransportationShow;
    _setState();
  }

  void showIncluded() {
    isIncludedShow = !isIncludedShow;
    _setState();
  }

  void showExcluded() {
    isExcludedShow = !isExcludedShow;
    _setState();
  }

  void showLoaclCash() {
    isLocalCashShow = !isLocalCashShow;
    _setState();
  }

  void selectBusTour() {
    isWalking = false;
    isFoodAndDrink = false;
    isDayTrip = false;
    isBusTour = true;
    isBikeTour = false;
    isCruises = false;
    _setState();
  }

  void selectBickTour() {
    isWalking = false;
    isFoodAndDrink = false;
    isDayTrip = false;
    isBusTour = false;
    isBikeTour = true;
    isCruises = false;
    _setState();
  }

  void selectDayTrib() {
    isWalking = false;
    isFoodAndDrink = false;
    isDayTrip = true;
    isBusTour = false;
    isBikeTour = false;
    isCruises = false;
    _setState();
  }

  void selectWalkingTour() {
    isWalking = true;
    isFoodAndDrink = false;
    isDayTrip = false;
    isBusTour = false;
    isBikeTour = false;
    isCruises = false;
    _setState();
  }

  void selectFoodAndDrink() {
    isWalking = false;
    isFoodAndDrink = true;
    isDayTrip = false;
    isBusTour = false;
    isBikeTour = false;
    isCruises = false;
    _setState();
  }

  void selectCruises() {
    isWalking = false;
    isFoodAndDrink = false;
    isDayTrip = false;
    isBusTour = false;
    isBikeTour = false;
    isCruises = true;
    _setState();
  }

  void selectCar() {
    isCar = true;
    isBus = false;
    _setState();
  }

  void selectBus() {
    isCar = false;
    isBus = true;
    _setState();
  }
}
