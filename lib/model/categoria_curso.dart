
import 'curso.dart';

class CategoriaCurso {
  String nome;
  List<Curso> cursos;

  String filter = "";

  List<Curso> get filtered{
    var filter = this.filter.toLowerCase();
    return cursos.where((c) => c.matriculado && c.nomeCurso.toLowerCase().contains(filter)).toList();
  } 

}