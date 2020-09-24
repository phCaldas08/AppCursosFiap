import 'package:app_cursos/model/categoria_curso.dart';
import 'package:app_cursos/service/categoria_curso_service.dart';
import 'package:mobx/mobx.dart';
part 'categoria_curso_store.g.dart';

class CategoriaCursoStore = _CategoriaCursoStore with _$CategoriaCursoStore;

abstract class _CategoriaCursoStore with Store {
  _CategoriaCursoStore() {
    getCursos();
  }

  getCursos() async {
    isLoading = true;

    var categoriasCursos = (await CategoriaCursoService.findAll());
    _categoriasCursos = categoriasCursos.asObservable();

    isLoading = false;
  }

  @observable
  bool isLoading = false;

  @observable
  ObservableList<CategoriaCurso> _categoriasCursos = ObservableList();

  @observable
  bool isSearching = false;

  @observable
  String filter = "";

  @computed
  List<CategoriaCurso> get filtered {
    var filter = this.filter.toLowerCase();
    _categoriasCursos.forEach((c) => c.filter = filter);

    return _categoriasCursos
        .where((c) => c.filtered.any((element) => true))
        .toList();
  }
}
