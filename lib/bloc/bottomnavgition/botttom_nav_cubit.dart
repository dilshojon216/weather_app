import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavCubit extends Cubit<int> {
  BottomNavCubit() : super(0);

  void updateIndex(int index) => emit(index);

  void getMyLoction() => emit(0);
  void getSreach() => emit(1);
  void getForcat() => emit(2);
  void getSettings() => emit(3);
}
