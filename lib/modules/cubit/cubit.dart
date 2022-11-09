import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newtest/modules/cubit/states.dart';
import 'package:newtest/modules/home_page.dart';
import 'package:newtest/modules/profile_page.dart';

class AppCubit extends Cubit<LearnAppStates>{

  AppCubit(): super(InitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  int currentPage = 0;

  bool isSwitch = false;
  bool isCheck = false;

  void changeIsSwitch(changed){
    isSwitch = changed;

    emit(ChangeIsSwitchState());
  }


  void changeCurrent(context, index){
    currentPage = index;

    if(index == 1)
    {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProfilePage()));
    }

    emit(ChangeCurrentState());
  }

  void changeIsCheck(index){
    isCheck = index;

    emit(ChangeIsCheckState());
  }

  void changePageRoute(context){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>const MyHomePage()));
    currentPage = 0;

    emit(ChangePageRouteState());

  }

  void arrow(context){
    Navigator.pop(context);
    currentPage = 0;
    emit(ChangeArrowState());
  }
}