import 'package:mobx/mobx.dart';

import 'models/pokemon_model.dart';
import 'repositories/poke_repository.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  
  //String text = '';

  final Pokerepository repository;

  @observable
  ObservableFuture<List<PokemonModel>> pokemons;


  _HomeControllerBase(this.repository){
    fetchPokemnos();
  }

  @action
  fetchPokemnos(){
    pokemons = repository.getAllPokemons().asObservable();
  }
  

}