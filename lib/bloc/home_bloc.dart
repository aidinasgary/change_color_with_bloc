import 'dart:math';

import 'package:change_color_with_bloc/bloc/home_event.dart';
import 'package:change_color_with_bloc/bloc/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(ColorInit(Color.fromARGB(255, 15, 182, 0))) {
    on<ChangeColorEvent>((event, emit) {
      emit(ColorRepaint(Color(Random().nextInt(0xffffffff))));
    });
  }
}
