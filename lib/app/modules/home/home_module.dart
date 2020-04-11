import 'package:flutter_modular/flutter_modular.dart';
import 'package:slidy_modular/app/modules/home/home_controller.dart';
import 'package:slidy_modular/app/modules/home/home_page.dart';
import 'package:slidy_modular/app/modules/home/repositories/poke_repository.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
    Bind((i) => HomeController(i.get())),
    Bind((i) => Pokerepository(i.get())),
  ];

  @override  
  List<Router> get routers => [
    Router('/', child: (_, args) => HomePage()),
  ];
  
}