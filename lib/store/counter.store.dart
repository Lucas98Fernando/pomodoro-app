import 'package:mobx/mobx.dart';

// Gerar um novo arquivo automaticamente com o build runner e o mobx codgen
/* 
  Comandos utilizados: 
  - flutter pub run build_runner clean 
  - flutter pub run build_runner watch 
*/
part 'counter.store.g.dart';

// Gerando a nova classe que recebe uma classe abstrata, essa classe poderá ser instanciada
class CounterStore = _CounterStore with _$CounterStore;

abstract class _CounterStore with Store {
  @observable
  int counter = 0;

  @action
  void increment() {
    counter++;
  }
}
