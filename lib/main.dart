import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {runApp( MyApp() ); }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      theme: ThemeData(
        textTheme: GoogleFonts.robotoTextTheme(
          Theme.of(context).textTheme.apply(
            fontSizeDelta: 8
          )
        )
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _id  = 0;
  List save = [];

  void _rota(int id, bool resposta) {

    List temp = [];
    temp.add(_id);
    temp.add(resposta);
    save.add(temp);
    print(save);

    setState(() {
      if (id != 0) {
        _id = id;
      }
    });
  }

  final List texto = [
    [0, "Se você tem apresentado FEBRE e TOSSE, ou FEBRE e DOR DE GARTANTA ou FEBRE e DIFICULDADES PARA RESPIRAR", 1, 12],
    [1, "Mais de 59 anos de idade.", 2, 7],
    [2, "Sente falta de ar ou sensação de desmaio.", 3, 4],
    [3, "Procure o mais breve possível o Serviço de Saúde", 0, 0],
    [4, "Alguma doença crônica como hipertensão ou diabetes.", 5, 6],
    [5, "O seu quadro não significa que você tenha um diagnóstico de coronavírus, mas é necessário tomarmos algumas precauções. Ë necessário que você permaneça em casa por 2 semanas a partir do momento que você começou a apresentar os sintomas. Nós iremos te auxiliar ligando diariamente para acompanhar a sua situação.  Fique calmo e mantenha alguns cuidados: se puder use máscaras cirúrgicas;  lembrar de higienizar as mãos com frequência, com solução alcoólica ou com água e sabão, especialmente depois de tossir ou espirrar; lembrar de cobrir o nariz e a  boca antes de tossir ou espirrar  com lenço descartável ou com o antebraço;  evitar  o compartilhamento de utensílios domésticos, tais como talheres, pratos ou copos; caso não possa dispor de um banheiro exclusivo, após o uso  os mesmos precisam ser higienizados com água e sabão ou água sanitárias. Se você sentir piora no seu quadro de saúde, especialmente se for falta de ar, procure o mais breve possível o serviço de saúde.", 0, 0],  
    [6, "O seu quadro não significa que você tenha um diagnóstico de coronavírus, mas é necessário tomarmos algumas precauções. Ë necessário que você permaneça em casa por 2 semanas a partir do momento que você começou a apresentar os sintomas. Nós iremos te auxiliar ligando diariamente para acompanhar a sua situação.  Fique calmo e mantenha alguns cuidados: se puder use máscaras cirúrgicas;  lembrar de higienizar as mãos com frequência, com solução alcoólica ou com água e sabão, especialmente depois de tossir ou espirrar; lembrar de cobrir o nariz e a  boca antes de tossir ou espirrar  com lenço descartável ou com o antebraço;  evitar  o compartilhamento de utensílios domésticos, tais como talheres, pratos ou copos; caso não possa dispor de um banheiro exclusivo, após o uso  os mesmos precisam ser higienizados com água e sabão ou água sanitárias. Se você sentir piora no seu quadro de saúde, especialmente se for falta de ar, procure o mais breve possível o serviço de saúde.", 0, 0],
    [7, "Falta de ar ou sensação de desmaio.", 8, 9],
    [8, "Procure o mais breve possível o Serviço de Saúde.", 0, 0],
    [9, "Alguma doença crônica como hipertensão ou diabetes.", 10, 11],
    [10, "O seu quadro não significa que você tenha um diagnóstico de coronavírus, mas é necessário tomarmos algumas precauções. Ë necessário que você permaneça em casa por 2 semanas a partir do momento que você começou a apresentar os sintomas. Nós iremos te auxiliar ligando diariamente para acompanhar a sua situação.  Fique calmo e mantenha alguns cuidados: se puder use máscaras cirúrgicas;  lembrar de higienizar as mãos com frequência, com solução alcoólica ou com água e sabão, especialmente depois de tossir ou espirrar; lembrar de cobrir o nariz e a  boca antes de tossir ou espirrar  com lenço descartável ou com o antebraço;  evitar  o compartilhamento de utensílios domésticos, tais como talheres, pratos ou copos; caso não possa dispor de um banheiro exclusivo, após o uso  os mesmos precisam ser higienizados com água e sabão ou água sanitárias. Se você sentir piora no seu quadro de saúde, especialmente se for falta de ar, procure o mais breve possível o serviço de saúde.", 0, 0],
    [11, "O seu quadro não significa que você tenha um diagnóstico de coronavírus, mas é necessário tomarmos algumas precauções. Ë necessário que você permaneça em casa por 2 semanas a partir do momento que você começou a apresentar os sintomas. Nós te  ligaremos a cada 2 dias para monitorar o seu quadro, te auxiliar e acompanhar a sua situação. N  Fique calmo e mantenha alguns cuidados: se puder use máscaras cirúrgicas;  lembrar de higienizar as mãos com frequência, com solução alcoólica ou com água e sabão, especialmente depois de tossir ou espirrar; lembrar de cobrir o nariz e a  boca antes de tossir ou espirrar  com lenço descartável ou com o antebraço;  evitar  o compartilhamento de utensílios domésticos, tais como talheres, pratos ou copos; caso não possa dispor de um banheiro exclusivo, após o uso  os mesmos precisam ser higienizados com água e sabão ou água sanitárias. Se você sentir piora no seu quadro de saúde, especialmente se for falta de ar, procure o mais breve possível o serviço de saúde.", 0, 0],
    [12, "Para você se proteger e impedir a disseminação do coronavírus é importante seguir as seguintes recomendações: 1) lave com frequência suas mãos até a altura dos punhos com água e sabão ou higienize-se com álcool  gel 70%; 2) ao tossir ou espirar cubra nariz e boca com um lenço ou com o braço e não use as mãos; 3) evite tocar olhos, nariz e boca com as mãos não lavadas; 4) mantenha uma distância mínima de 2 metros de qualquer pessoa que esteja tossindo ou espirrando; 5) evite o contato físico com meios de abraços, beijos e aperto de mão; 6) higienize objetos ou superfícies tocadas com frequência; 7) não compartilhe objetos de uso pessoal como talheres, toalhas, pratos e copos; 8) evite aglomerações e mantenha os ambientes limpos e bem ventilados; 9) se estiver doente, evite contatos físicos com outras pessoas, principalmente idosos e doentes crônicos e evite sair de casa até melhorar; 10) durma bem, tenha uma alimentação saudável e faça atividade física.", 0, 0],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              Text(
                'TEXTO: ${texto[_id][0]}\n\n\n',
                textAlign: TextAlign.center,
                // style: Theme.of(context).textTheme.display1,
              ),
              Text(
                '${texto[_id][1]}\n\n\n',
                textAlign: TextAlign.center,
                // style: Theme.of(context).textTheme.display1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RaisedButton(
                    onPressed: () => texto[_id][2] == 0 ? null : _rota(texto[_id][2], true),
                    child: Text("Sim"),
                  ),
                  RaisedButton(
                    onPressed: () => texto[_id][3] == 0 ? null : _rota(texto[_id][3], false),
                    child: Text("Não"),
                  ),
                ],
              ),
              Text(
                '\n\n\n${this.save}',
                textAlign: TextAlign.center,
                // style: Theme.of(context).textTheme.display1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
