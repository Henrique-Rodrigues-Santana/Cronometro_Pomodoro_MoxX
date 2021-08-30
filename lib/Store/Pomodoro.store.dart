import 'package:mobx/mobx.dart';

part 'Pomodoro.store.g.dart';

class PomodoroStore = _PomodoroStore with _$PomodoroStore;

abstract class _PomodoroStore with Store{
  @observable
  bool iniciar = false;

  @observable
  int minuto = 2;

  @observable
  int segundos = 1;



  @observable
  int tempoTrabalho = 2;

  @observable
  int tempoDescanso = 1;


  @action
  void inicia(){
    iniciar = true;
  }
  @action
  void parar(){
    iniciar = false;
  }

  @action
  void reiniciar(){
    iniciar = false;
  }

  @action
  void incrementarTempoTrabalho(){
    tempoTrabalho++;
  }
  @action
  void decrementarTempoTrabalho(){
    tempoTrabalho--;
  }
  @action
  void incrementarTempoDescanso(){
    tempoDescanso++;
  }
  @action
  void decrementarTempoDescanso(){
    tempoDescanso--;
  }
}