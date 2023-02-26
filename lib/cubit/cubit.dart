// ignore_for_file: avoid_print

import 'package:cv_app/cubit/states.dart';
import 'package:cv_app/dio_helper.dart';
import 'package:cv_app/model/data_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitState());
  static AppCubit get(context) => BlocProvider.of(context);

  DataModel? dataFromJson;
  void getDaata() {
    emit(AppLoadState());
    DioHelper.getData(
      url: 'http://cvflutter-001-site1.ctempurl.com/api/Offers',
    ).then((value) {
      dataFromJson = DataModel.fromJson(value.data);
      emit(AppssssState());
    }).catchError((e) {
      print(e);
    });
  }
}
