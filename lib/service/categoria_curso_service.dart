import 'package:app_cursos/model/categoria_curso.dart';
import 'package:app_cursos/model/curso.dart';

abstract class CategoriaCursoService{

  static List<CategoriaCurso> _list;

  static _createCursos(){
    if(_list != null) return;

    Curso c1 = Curso();
    c1.avaliacao = 4.7;
    c1.descricao = "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32. \nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.";
    c1.duracao = 20.0;
    c1.fiapoints = 8;
    c1.nomeCurso = "Design Thinking";
    c1.progresso = 71.0;
    c1.urlImagem = "assets/images/desigin thinking.png";
    c1.videos = 12;
    c1.matriculado = true;

    Curso c2 = Curso();
    c2.avaliacao = 4.8;
    c2.descricao = "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32. \nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.";
    c2.duracao = 24.0;
    c2.fiapoints = 10;
    c2.nomeCurso = "UI UX";
    c2.progresso = 60.0;
    c2.urlImagem = "assets/images/ui ux.png";
    c2.videos = 14;
    c2.matriculado = true;

    Curso c3 = Curso();
    c3.avaliacao = 4.6;
    c3.descricao = "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32. \nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.";
    c3.duracao = 30.0;
    c3.fiapoints = 14;
    c3.nomeCurso = "Direito Digital";
    c3.progresso = 30.0;
    c3.urlImagem = "assets/images/direito digital.jpg";
    c3.videos = 22;
    c3.matriculado = true;

    Curso c4 = Curso();
    c4.avaliacao = 4.8;
    c4.descricao = "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32. \nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.";
    c4.duracao = 16.0;
    c4.fiapoints = 8;
    c4.nomeCurso = "Excel Primeiros Passos";
    c4.progresso = 90.0;
    c4.urlImagem = "assets/images/excel.jpg";
    c4.videos = 10;
    c4.matriculado = true;

    Curso c5 = Curso();
    c5.avaliacao = 4.7;
    c5.descricao = "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32. \nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.";
    c5.duracao = 24.0;
    c5.fiapoints = 13;
    c5.nomeCurso = "Facebook Ads";
    c5.progresso = 72.5;
    c5.urlImagem = "assets/images/facebook.png";
    c5.videos = 15;
    c5.matriculado = true;

    Curso c6 = Curso();
    c6.avaliacao = 4.5;
    c6.descricao = "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32. \nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.";
    c6.duracao = 16.0;
    c6.fiapoints = 8;
    c6.nomeCurso = "Google Ads";
    c6.progresso = 90.0;
    c6.urlImagem = "assets/images/google ads.jpg";
    c6.videos = 10;
    c6.matriculado = true;

    Curso c7 = Curso();
    c7.avaliacao = 5;
    c7.descricao = "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32. \nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.";
    c7.duracao = 20;
    c7.fiapoints = 16;
    c7.nomeCurso = "Flutter";
    c7.progresso = 90.0;
    c7.urlImagem = "assets/images/flutter.jpg";
    c7.videos = 15;
    c7.matriculado = true;


    Curso c8 = Curso();
    c8.avaliacao = 4.9;
    c8.descricao = "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32. \nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.";
    c8.duracao = 30;
    c8.fiapoints = 16;
    c8.nomeCurso = "Java - Spring Boot";
    c8.progresso = 85.0;
    c8.urlImagem = "assets/images/java.jpg";
    c8.videos = 20;
    c8.matriculado = true;

    Curso c9 = Curso();
    c9.avaliacao = 4.3;
    c9.descricao = "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32. \nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.";
    c9.duracao = 14;
    c9.fiapoints = 8;
    c9.nomeCurso = "Marketing Digital";
    c9.progresso = 45.0;
    c9.urlImagem = "assets/images/marketing digital.png";
    c9.videos = 10;
    c9.matriculado = true;

    Curso c10 = Curso();
    c10.avaliacao = 4.7;
    c10.descricao = "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32. \nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.";
    c10.duracao = 18;
    c10.fiapoints = 12;
    c10.nomeCurso = "Office 365";
    c10.progresso = 30.0;
    c10.urlImagem = "assets/images/office.jpg";
    c10.videos = 15;
    c10.matriculado = true;

    Curso c11 = Curso();
    c11.avaliacao = 4.7;
    c11.descricao = "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32. \nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.";
    c11.duracao = 18;
    c11.fiapoints = 12;
    c11.nomeCurso = "Python N1";
    c11.progresso = 30.0;
    c11.urlImagem = "assets/images/python.jpg";
    c11.videos = 15;
    c11.matriculado = true;

    CategoriaCurso cat1 = CategoriaCurso();
    cat1.nome = "Programação";
    cat1.cursos = List<Curso>()..addAll([c7, c11, c8]);

    CategoriaCurso cat2 = CategoriaCurso();
    cat2.nome = "Marketing";
    cat2.cursos = List<Curso>()..addAll([c9, c5, c6]);

    CategoriaCurso cat3 = CategoriaCurso();
    cat3.nome = "Design";
    cat3.cursos = List<Curso>()..addAll([c1, c2]);

    CategoriaCurso cat4 = CategoriaCurso();
    cat4.nome = "Office";
    cat4.cursos = List<Curso>()..addAll([c10, c4, c3]);

    _list = List<CategoriaCurso>()..addAll([cat1, cat2, cat3, cat4]);
    
  }
  
  static Future<List<CategoriaCurso>> findAll() async{
    return await Future.delayed(Duration(seconds: 1), (){
      _createCursos();

      return _list;
    });
  }

}