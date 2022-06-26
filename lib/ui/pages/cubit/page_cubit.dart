import 'package:bloc/bloc.dart';
import 'package:get/get.dart';
import 'package:http/http.dart.';
import 'package:shared_preferences/shared_preferences.dart';

class PageCubit extends Cubit<int> {
  PageCubit() : super(0);

  void setPage(int newPage) {
    emit(newPage);
  }
}
