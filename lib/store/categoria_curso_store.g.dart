// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categoria_curso_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CategoriaCursoStore on _CategoriaCursoStore, Store {
  Computed<List<CategoriaCurso>> _$filteredComputed;

  @override
  List<CategoriaCurso> get filtered => (_$filteredComputed ??=
          Computed<List<CategoriaCurso>>(() => super.filtered,
              name: '_CategoriaCursoStore.filtered'))
      .value;

  final _$isLoadingAtom = Atom(name: '_CategoriaCursoStore.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$_categoriasCursosAtom =
      Atom(name: '_CategoriaCursoStore._categoriasCursos');

  @override
  ObservableList<CategoriaCurso> get _categoriasCursos {
    _$_categoriasCursosAtom.reportRead();
    return super._categoriasCursos;
  }

  @override
  set _categoriasCursos(ObservableList<CategoriaCurso> value) {
    _$_categoriasCursosAtom.reportWrite(value, super._categoriasCursos, () {
      super._categoriasCursos = value;
    });
  }

  final _$isSearchingAtom = Atom(name: '_CategoriaCursoStore.isSearching');

  @override
  bool get isSearching {
    _$isSearchingAtom.reportRead();
    return super.isSearching;
  }

  @override
  set isSearching(bool value) {
    _$isSearchingAtom.reportWrite(value, super.isSearching, () {
      super.isSearching = value;
    });
  }

  final _$filterAtom = Atom(name: '_CategoriaCursoStore.filter');

  @override
  String get filter {
    _$filterAtom.reportRead();
    return super.filter;
  }

  @override
  set filter(String value) {
    _$filterAtom.reportWrite(value, super.filter, () {
      super.filter = value;
    });
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
isSearching: ${isSearching},
filter: ${filter},
filtered: ${filtered}
    ''';
  }
}
