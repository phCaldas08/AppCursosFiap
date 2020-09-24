import 'package:app_cursos/model/categoria_curso.dart';
import 'package:app_cursos/model/curso.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../constants.dart';

// ignore: must_be_immutable
class CardCategoriaCurso extends StatelessWidget {
  CategoriaCurso _categoriaCurso;
  Function onCursoRemovido;

  bool _isLoading = false;
  int _numberOfCardList = 1;
  BuildContext _context;

  static const _duration = Duration(milliseconds: 1000);

  CardCategoriaCurso.buildCard(
      {@required CategoriaCurso categoriaCurso, Function onCursoRemovido}) {
    _categoriaCurso = categoriaCurso;
    this.onCursoRemovido = onCursoRemovido;
  }

  CardCategoriaCurso.buildCardLoading({int numberOfCardList = 1}) {
    _isLoading = true;
    _numberOfCardList = numberOfCardList;
  }

  Widget get _nameField {
    return !_isLoading
        ? Text(
            _categoriaCurso.nome,
            style: TextStyle(
              fontSize: 20,
            ),
          )
        : Shimmer.fromColors(
            child: Container(
              height: 22,
              width: Constants.percentWidth(_context, 40),
              color: Constants.backgroundCard,
            ),
            baseColor: Constants.backgroundCard,
            highlightColor: Constants.secundaryColor,
            period: _duration,
          );
  }

  Widget get _listaCursos {
    return !_isLoading
        ? ListView.builder(
            itemCount: _categoriaCurso.filtered.length,
            itemBuilder: (context, index) {
              return _buildCardCurso(context, _categoriaCurso.filtered[index]);
            },
            scrollDirection: Axis.horizontal)
        : ListView.builder(
            itemCount: _numberOfCardList,
            itemBuilder: (context, index) {
              return _buildCardCursoLoading(context);
            },
            scrollDirection: Axis.horizontal);
  }

  @override
  Widget build(BuildContext context) {
    _context = context;
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Container(
          color: Constants.backgroundCard,
          height: 250,
          width: Constants.percentWidth(context, 95),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: _nameField,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 16.0, right: 16, bottom: 16, top: 48),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: _listaCursos,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCardCurso(BuildContext context, Curso curso) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 8.0,
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, "/detail", arguments: curso)
              .then((value) {
            if (value != null) {
              var ret = value as Curso;
              if (!ret.matriculado) onCursoRemovido.call();
            }
          });
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            width: Constants.percentWidth(context, 70),
            color: Constants.fontColor,
            child: Stack(
              children: [
                Image.asset(
                  curso.urlImagem,
                  height: Constants.percentHeight(context, 100),
                  fit: BoxFit.fitHeight,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 40,
                    color: Constants.titleCourseColor,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          curso.nomeCurso,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCardCursoLoading(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 8.0,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Container(
          width: Constants.percentWidth(context, 70),
          child: Stack(
            children: [
              Shimmer.fromColors(
                child: Container(
                  color: Constants.fontColor,
                ),
                baseColor: Constants.secundaryColor,
                highlightColor: Constants.backgroundCard,
                period: _duration,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 40,
                  color: Constants.titleCourseColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
