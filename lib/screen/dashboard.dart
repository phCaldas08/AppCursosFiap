import 'package:app_cursos/constants.dart';
import 'package:app_cursos/store/categoria_curso_store.dart';
import 'package:app_cursos/widget/card_categoria_curso.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class Dashboard extends StatelessWidget {
  final CategoriaCursoStore _categoriaCursoStore = CategoriaCursoStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.secundaryColor,
      body: Stack(
        children: [
          Observer(
            builder: (context) => Padding(
              padding: EdgeInsets.only(
                top: Constants.percentHeight(
                  context,
                  _categoriaCursoStore.isSearching ? 21 : 14,
                ),
                left: 8,
                right: 8,
              ),
              child: Observer(
                builder: (context) {
                  return !_categoriaCursoStore.isLoading
                      ? (_categoriaCursoStore.filtered.length > 0
                          ? ListView.builder(
                              itemCount: _categoriaCursoStore.filtered.length,
                              itemBuilder: (context, index) {
                                return CardCategoriaCurso.buildCard(
                                  categoriaCurso:
                                      _categoriaCursoStore.filtered[index],
                                  onCursoRemovido: () {
                                    _categoriaCursoStore.getCursos();
                                  },
                                );
                              },
                            )
                          : Container(
                              child: Center(
                                  child: Icon(
                              Icons.folder_open,
                              color: Constants.fontColor,
                              size: 65,
                            ))))
                      : ListView.builder(
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            return CardCategoriaCurso.buildCardLoading(
                              numberOfCardList: 2,
                            );
                          },
                        );
                },
              ),
            ),
          ),
          _buildHeader(context),
          _buildSearchField(),
        ],
      ),
    );
  }

  Widget _buildSearchField() {
    return Observer(
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            top: Constants.percentHeight(context, 15),
          ),
          child: _categoriaCursoStore.isSearching
              ? Container(
                  color: Constants.headerColor,
                  height: Constants.percentHeight(
                      context, _categoriaCursoStore.isSearching ? 8 : 0),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextField(
                      onChanged: (value) => _categoriaCursoStore.filter = value,
                      decoration: InputDecoration(
                        hintText: "Nome do curso",
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Constants.titleCourseColor,
                          ),
                        ),
                      ),
                      style: TextStyle(
                        color: Constants.fontColor,
                      ),
                    ),
                  ),
                )
              : null,
        );
      },
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: Constants.percentHeight(context, 16),
        color: Constants.headerColor,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/images/nano_courses.png",
                  scale: 3.7,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    this._categoriaCursoStore.isSearching =
                        !this._categoriaCursoStore.isSearching;
                    this._categoriaCursoStore.filter = "";
                  },
                  child: Observer(
                    builder: (context) => Icon(
                      _categoriaCursoStore.isSearching
                          ? Icons.close
                          : Icons.search,
                      size: 40,
                      color: Constants.fontColor,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
