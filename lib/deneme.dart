import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText':
          'Aşağıdakilerden hangisi akran zorbalığının sonuçlarından birisi değildir?',
      'answers': [
        {'text': 'Okul fobisi ', 'score': -2},
        {'text': 'Dikkat eksikliği', 'score': -2},
        {'text': 'Okul başarısında düşme', 'score': -2},
        {'text': 'Kendini güvenli hissetmesi', 'score': 10},
      ],
    },
    {
      'questionText':
          'Vurma itme saç çekme tekme atma hangi zorbalık çeşidine girmektedir?',
      'answers': [
        {'text': 'Fiziksel şiddet', 'score': 10},
        {'text': 'Sözel şiddet ', 'score': -2},
        {'text': 'Cinsel şiddet', 'score': -2},
        {'text': 'Eşyalarına zarar verme ', 'score': -2},
      ],
    },
    {
      'questionText':
          'Alay etme lakap takma kötü söz söylemem hangi zorbalık çeşidine girmekte',
      'answers': [
        {'text': 'Cinsel şiddet ', 'score': -2},
        {'text': 'Fiziksel şiddet ', 'score': -2},
        {'text': 'Dedikodu yaymak', 'score': -2},
        {'text': 'Sözel şiddet ', 'score': 10},
      ],
    },
    {
      'questionText':
          'Birisinin zorbalık yaptığını görüp hiçbir şey yapmayan kişiye ne denir?',
      'answers': [
        {'text': 'Zorba', 'score': -2},
        {'text': 'Mağdur', 'score': -2},
        {'text': 'Seyirci', 'score': 10},
        {'text': 'Zorba – mağdur ', 'score': -2},
      ],
    },
    {
      'questionText':
          'Bir arkadaşı tarafından zorbalığa uğrayan kişiye ne denir?',
      'answers': [
        {'text': 'Zorba', 'score': -2},
        {'text': 'Mağdur', 'score': 10},
        {'text': 'Seyirci', 'score': -2},
        {'text': 'Zorba – mağdur ', 'score': -2},
      ],
    },
    {
      'questionText':
          'Birisinin zorbalığa uğradığını gördüğümüzde ne yapmamız gerekiyor ?',
      'answers': [
        {'text': 'Fiziksel karşılık verme', 'score': -2},
        {'text': 'Zorbalığa ortak olmak ', 'score': -2},
        {'text': 'Ailemize bildirmek ', 'score': 10},
        {'text': 'İzlemek', 'score': -2},
      ],
    },
    {
      'questionText':
          'Zorbalığa uğradığımızda aşağıdakilerden hangisinden yardım almayız? ',
      'answers': [
        {'text': 'Ailemiz', 'score': -2},
        {'text': 'Okul idaresi', 'score': -2},
        {'text': 'Öğretmenlerimiz', 'score': 10},
        {'text': 'Zorbalık yapana yardım etmek', 'score': -2},
      ],
    },
    {
      'questionText': 'Zorbalığa uğrayan kişinin özellikleri arasındadır?',
      'answers': [
        {'text': 'Kaygı düzeyi düşük', 'score': -2},
        {'text': 'Dışa dönük', 'score': -2},
        {'text': 'Suçluluk duygusu', 'score': 10},
        {'text': 'Empati düzeyi düşük ', 'score': -2},
      ],
    },
    {
      'questionText': 'Zorbalığın sonucunda hangisi gerçekleşmez ?',
      'answers': [
        {'text': 'Kuvvetli arkadaşlık bağları', 'score': 10},
        {'text': 'Sağlığın olumsuz etkilenmesi', 'score': -2},
        {'text': 'Depresyon', 'score': -2},
        {'text': 'Endişe', 'score': -2},
      ],
    },
    {
      'questionText':
          'Bir kişinin fotoğraflarının altına veya sosyal medya gruplarından yapılan zorbalığa ne denir?',
      'answers': [
        {'text': 'Fiziksel şiddet', 'score': -2},
        {'text': 'Siber şiddet', 'score': 10},
        {'text': 'Sözel şiddet', 'score': -2},
        {'text': 'Cinsel şiddet', 'score': -2},
      ],
    },
    {
      'questionText':
          'Zorbalık yapan birisi zorbalık yaptığı kişiye karşı ne demeli?',
      'answers': [
        {'text': 'Kötü söz söylemeli ', 'score': -2},
        {'text': 'Sen bunu hak ettin! ', 'score': -2},
        {'text': 'Özür dilerim ', 'score': 10},
        {'text': 'Sözümü dinlemeliydin ', 'score': -2},
      ],
    },
    {
      'questionText':
          'Akran zorbalığı yaşan çocuklara aileleri nasıl yaklaşmalı?',
      'answers': [
        {'text': 'Kızarak', 'score': -2},
        {'text': 'Fiziksel zarar vererek ', 'score': -2},
        {'text': 'Konuyu umursamama', 'score': -2},
        {'text': 'Uzlaşmacı yaklaşarak', 'score': 10},
      ],
    },
    {
      'questionText': 'Akran zorbalığı en çok hangi ortamda karşımıza çıkar?',
      'answers': [
        {'text': 'Ev ', 'score': -2},
        {'text': 'Okul', 'score': 10},
        {'text': 'Sokak', 'score': -2},
        {'text': 'İş yeri', 'score': -2},
      ],
    },
    {
      'questionText':
          'Hangisi zorbalık yapan çocuğun özelliklerinden değildir? ',
      'answers': [
        {'text': 'Yıkıcı ve öfkeli ', 'score': -2},
        {'text': 'Empati düzeyi düşük', 'score': -2},
        {'text': 'Dışa dönük', 'score': -2},
        {'text': 'Hassas ve kırılgan ', 'score': 10},
      ],
    },
    {
      'questionText':
          'En çok karşımıza çıkan zorbalık çeşidi aşağıdakilerden hangisidir',
      'answers': [
        {'text': 'Fiziksel şiddet ', 'score': -2},
        {'text': 'Siber şiddet ', 'score': -2},
        {'text': 'Cinsel şiddet', 'score': -2},
        {'text': 'Sözel şiddet ', 'score': 10},
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Akran Zorbalığı Testi'),
          backgroundColor: Color(0xFF00E676),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                ) //Quiz
              : Result(_totalScore, _resetQuiz),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
