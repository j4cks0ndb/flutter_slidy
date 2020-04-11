import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:slidy_modular/app/app_widget.dart';


import 'app_controller.dart';
import 'modules/home/home_module.dart';
import 'shared/utils/constants.dart';


class AppModule extends MainModule{
  @override
  List<Bind> get binds => [
    Bind((i)=>AppController()),
    Bind((i)=>Dio(BaseOptions(baseUrl: URL_BASE))),
   
    
  ];

  @override
  List<Router> get routers => [
    Router('/', module: HomeModule()),
  ];

  @override
  Widget get bootstrap => AppWidget();

}