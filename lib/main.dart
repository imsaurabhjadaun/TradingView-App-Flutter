import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tradingview_app/app.dart';
import 'package:tradingview_app/cubit_observer.dart';
import 'package:tradingview_app/view/home/service/get-it/get_it_source.dart';

void main() {
  GetItSource.setup();
  Bloc.observer = CubitObserver();
  runApp(const MyApp());
}
