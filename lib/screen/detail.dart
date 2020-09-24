import 'package:app_cursos/constants.dart';
import 'package:app_cursos/model/curso.dart';
import 'package:app_cursos/widget/percent_indicator.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Detail extends StatelessWidget {
  Curso _curso;

  @override
  Widget build(BuildContext context) {
    _curso = ModalRoute.of(context).settings.arguments;

    _context = context;
    return Scaffold(
      backgroundColor: Constants.headerColor,
      body: Stack(
        children: [
          _buildImageCourse(context),
          _buildInfosCurso(context),
          _buildIndicadorPorcentagem(context),
          _buildDescricao(context),
          _buttonReturn,
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: GestureDetector(
                onTap: () {
                  _curso.matriculado = false;
                  Navigator.pop(context, _curso);
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Container(
                    height: 43,
                    width: Constants.percentWidth(context, 90),
                    color: Constants.fiapColor1,
                    child: Center(
                      child: Text(
                        "remover dos meus cursos",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  BuildContext _context;

  Widget get _buttonReturn {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 12, top: 30),
        child: GestureDetector(
          onTap: () => Navigator.pop(_context),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(35),
            child: Container(
              color: Constants.fiapColor1,
              child: Icon(
                Icons.arrow_back,
                size: 35,
                color: Constants.fontColor,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Align _buildDescricao(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 16.0,
          bottom: 70,
        ),
        child: Container(
          height: Constants.percentHeight(context, 23),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: Constants.percentWidth(context, 100),
                  child: Text(
                    "Descrição",
                    style: TextStyle(fontSize: 22),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 11,
                  ),
                  child: Text(_curso.descricao),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Align _buildInfosCurso(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        child: Padding(
          padding: EdgeInsets.only(
            top: Constants.percentHeight(context, 5),
          ),
          child: Container(
            width: Constants.percentWidth(context, 60),
            height: Constants.percentHeight(context, 23),
            child: Column(
              children: [
                _buildIndicator(
                  iconData: Icons.access_time,
                  value: "${_curso.duracao}h",
                ),
                _buildIndicator(
                  iconData: Icons.video_library,
                  value: "${_curso.videos} vídeos",
                ),
                _buildIndicator(
                  iconData: Icons.monetization_on,
                  value: "${_curso.fiapoints} Fiapoints",
                ),
                _buildIndicator(
                    iconData: Icons.stars, value: "${_curso.avaliacao}"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Align _buildIndicadorPorcentagem(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(
          top: Constants.percentHeight(context, 5),
        ),
        child: PercentIndicator(
          title: "Conclusão",
          percent: _curso.progresso,
        ),
      ),
    );
  }

  Widget _buildIndicator(
      {@required IconData iconData, @required String value}) {
    return Expanded(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: Icon(
              iconData,
              size: 32,
              color: Constants.fontColor,
            ),
          ),
          Expanded(
              child: Text(
            value,
            style: TextStyle(fontSize: 18),
          ))
        ],
      ),
    );
  }

  ClipRRect _buildImageCourse(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
      child: Container(
        height: Constants.percentHeight(context, 36),
        child: Stack(
          children: [
            Image.asset(
              _curso.urlImagem,
              fit: BoxFit.fitHeight,
              height: Constants.percentHeight(context, 100),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Container(
                  padding: EdgeInsets.only(left: 20),
                  color: Constants.fiapColor1,
                  height: 45,
                  width: Constants.percentWidth(context, 70),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      _curso.nomeCurso,
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
