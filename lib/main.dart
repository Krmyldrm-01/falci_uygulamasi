import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(SeerGrandma());
}

class SeerGrandma extends StatelessWidget {
  const SeerGrandma({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purpleAccent,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.purple,
          title: Text(
            "Günün Falı",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "LilitaOne",
            ),
          ),
        ),
        body: crystalGazing(),
      ),
    );
  }
}

class crystalGazing extends StatefulWidget {
  @override
  State<crystalGazing> createState() => _crystalGazingState();
}

class _crystalGazingState extends State<crystalGazing> {
  int lNo = 0;
  int mNo = 0;
  int rNo = 0;
  List<String> generalAnswers = [
    'AŞK: Bugün, aşk ve ilişki hayatınızda biraz daha temkinli olmalısın. Onu her konuda doğru anlamda anladığından da emin misin?',
    'AŞK: Aşk ve ilişki hayatınızda hakimiyeti eline almak ve birlikteliğinizi dilediğiniz gibi yönlendirmek isteyebilirsin. Bu isteğinin denge içerisindeki bir ilişkiye ne şekilde fayda edeceğini gözden geçirmelisin.',
    'AŞK: Duygularınızın bugün biraz düzensiz olduğunu görebilirsiniz. Güne, daha önce hiç yapmadığınız bir şekilde başlamanızı sağlayan doğal bir elektrik hissi var. Kalbiniz her zaman doğruyu söyler.',
    'AŞK: Duygularınız çoğu zaman rasyonel düşüncelerinize galip geliyor ve sonunda derinlerde duyguların beslediği bir karmaşa ortaya çıkıyor. Çok da mantıklı düşünerek kalbinizi görmezden gelmeyin. Amacınız bu ikisi arasında dengeyi bulmak.',
    'AŞK: Duygusal olarak kötü hissetmeyin, sezgileriniz güçlü durumda. Sevgilinizin hislerini bu sezgiler ile anlamaya çalışın. Bazen sadece eğlenmek gerekir, siz de rahatlayın ve birlikte eğlenin!',
    'PARA: Kafanıza uzun süredir koyduğunuz bazı harcamalar var, bugün kendinize bunlara gerçekten ne kadar ihtiyacınız olduğunu sorun ve bir kısmını iptal edin. Bugün bir hayır kurumuna küçücük bir bağış yapın, kendinizi çok daha iyi hissedeceksiniz.',
    'PARA: Nakit akışınızın dengesini bozabilecek dönemlere giriyoruz, bu aralar kesinlikle masa başına oturup bir bütçe hesabı yapmalısınız, önümüzdeki 3 ay boyunca gelir gider dengenizden emin olmadan hareket etmeyin',
    'PARA: Bugün, başkalarına yardım, destek ve hizmet duygunuzun yüksek olduğu bir gün olabilir, hayır, bağış işlerinde yer alabilirsiniz.',
    'PARA: Bugün kendinize güveniniz oldukça yüksek, ancak bu size pek fayda getirmeyebilir, bağlantılarınız size verdikleri destekten şüphelenebilirler. Sakin hareket edin, bir adım geri durun, ve paradan çok sağlığınızla ilgilenin.',
    'PARA: Para kaynaklarımız ile ilgili detaylar bu dönem dikkat etmelisiniz. Ayrıca maddi konularda ve harcamalarda uzun süredir sizi meşgul eden bir konuda karara varabilirsiniz, yakınlarınızdan veya eşinizden karar alırken yardım isteyin.',
    'TAVSİYE: Bugün meraklı kişiliğini ön plana çıkartarak insanlara soru sormaktan çekinme ',
    'TAVSİYE: Bugün daha önce hiç fark etmediğin şeylerin hep orada olduğunu fark edebilirsin, sadece biraz daha dikkatli olmaya çalış',
    'TAVSİYE: Bugün ikili ilişkilerinde daha aktif ve verici olmaya çalışabilirsin, aynı fikirde olduğun insanları daha dikkatli dinlemeye ve sorgulamaya başla',
    'TAVSİYE: Bugün sadece işine odaklan, dikkatini dağıtacak her türlü nesne ve sosyal medyadan uzaklaşmak kendini daha mutlu hissettirebilir',
    'TAVSİYE: Bugün tek başına biraz yürüyüş yap, çocukluğunda dinlediğin şarkıları aç ve o zamanlar oynadığın oyunları hayal et'
  ];

  String answers = "TIKLA FALIN GELSİN";

  void lFunc() {
    lNo = Random().nextInt(5);
    setState(() {
      answers = generalAnswers[lNo];
    });
  }

  void mFunc() {
    mNo = Random().nextInt(5) + 5;
    setState(() {
      answers = generalAnswers[mNo];
    });
  }

  void rFunc() {
    rNo = Random().nextInt(5) + 10;
    setState(() {
      answers = generalAnswers[rNo];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, bottom: 10),
            child: Image.asset(
              "assets/image/falci.png",
              cacheHeight: 100,
              cacheWidth: 100,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          TextButton(
            child: Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(
                horizontal: 35,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.favorite,
                  color: Colors.pink,
                ),
                title: Center(
                  child: Text(
                    "AŞK DURUMU",
                    style: TextStyle(
                      color: Colors.pink,
                      fontSize: 25,
                      fontFamily: "LuckiestGuy",
                    ),
                  ),
                ),
              ),
            ),
            onPressed: lFunc,
          ),
          SizedBox(
            height: 15,
          ),
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.purpleAccent,
            ),
            child: Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(
                horizontal: 35,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.currency_exchange,
                  color: Colors.green,
                ),
                title: Center(
                  child: Text(
                    "PARA DURUMU",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 25,
                      fontFamily: "LuckiestGuy",
                    ),
                  ),
                ),
              ),
            ),
            onPressed: mFunc,
          ),
          SizedBox(
            height: 15,
          ),
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.purpleAccent,
            ),
            child: Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(horizontal: 35),
              child: ListTile(
                leading: Icon(
                  Icons.query_builder,
                  color: Colors.blueAccent,
                ),
                title: Center(
                  child: Text(
                    "GÜNLÜK TAVSİYE",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 25,
                      fontFamily: "LuckiestGuy",
                    ),
                  ),
                ),
              ),
            ),
            onPressed: rFunc,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 45),
            child: Divider(
              height: 20,
              color: Colors.black,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 45),
            child: Text(
              answers,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
