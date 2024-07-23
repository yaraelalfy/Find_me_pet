import 'package:bloc/bloc.dart';
import 'package:findanimals/features/home/presentation/manager/state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(InitialState());
  bool heart = false;
  bool is_available = false;

  void choosenHeart() {
    heart = !heart;
    isavailable();
    emit(ChoosenFavouriteColor());
  }

  void isavailable() {
    is_available = heart;
    emit(ChoosenFavouriteColor());
  }
}
