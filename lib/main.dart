import 'package:flutter/material.dart';
import 'package:sociaworld/GonderiKarti.dart';
import 'package:sociaworld/profilsayfasi.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Projem',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0.0,
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.grey,
              size: 32.0,
            ),
            onPressed: () {}),
        title: Text(
          "Socialworld",
          style: TextStyle(fontSize: 20.0, color: Colors.grey),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.purple,
                size: 32.0,
              ),
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Column(
                        children: [
                          duyuru("Kamil seni takip etti", "3 Dakika önce"),
                          duyuru("Ceren gönderine yorum yaptı", "12 saat önce"),
                          duyuru("Eren sana mesaj gönderdi", "1 hafta önce")
                        ],
                      );
                    });
              }),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.grey[100], boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 3.0),
                blurRadius: 5.0,
              )
            ]),
            width: double.infinity,
            height: 100.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                profilKardiolustur(
                  "Slçk25",
                  "https://cdn.pixabay.com/photo/2016/03/09/15/10/man-1246508_1280.jpg",
                  "Selçuk Mert Yılmaz",
                  "https://cdn.pixabay.com/photo/2020/06/27/21/53/chicago-5347324_1280.jpg",
                  "220",
                  "218",
                  "3",
                ),
                profilKardiolustur(
                  "Whattom",
                  "https://cdn.pixabay.com/photo/2012/03/02/12/42/baby-21249_960_720.jpg",
                  "Tom Watson",
                  "https://cdn.pixabay.com/photo/2019/12/11/18/06/dog-4688913_1280.jpg",
                  "111",
                  "282",
                  "15",
                ),
                profilKardiolustur(
                  "Jess",
                  "https://cdn.pixabay.com/photo/2015/09/02/12/58/woman-918788_1280.jpg",
                  "Jessica Lopez",
                  "https://cdn.pixabay.com/photo/2020/12/12/13/07/bird-5825414_1280.jpg",
                  "51.689",
                  "25",
                  "75",
                ),
                profilKardiolustur(
                  "Belma40",
                  "https://cdn.pixabay.com/photo/2019/11/03/20/11/portrait-4599553_1280.jpg",
                  "Belma Zorlu",
                  "https://cdn.pixabay.com/photo/2020/12/13/16/22/snow-5828736_1280.jpg",
                  "447",
                  "378",
                  "20",
                ),
                profilKardiolustur(
                  "Yıldız_sahin",
                  "https://cdn.pixabay.com/photo/2017/09/20/12/12/girl-2768346_960_720.jpg",
                  "Yıldız Şahin",
                  "https://cdn.pixabay.com/photo/2019/10/08/04/16/ryugyong-hotel-4534092_1280.jpg",
                  "258",
                  "89",
                  "6",
                ),
                profilKardiolustur(
                  "Çakır_Nadir33", //Kullanıcı adı
                  "https://cdn.pixabay.com/photo/2016/11/21/14/53/adult-1845814_1280.jpg", //PP resim
                  "Nadir Çakır", //isim soyad
                  "https://cdn.pixabay.com/photo/2012/11/02/13/02/car-63930_1280.jpg", //kapak foto
                  "65", //takipci
                  "65", //takip
                  "0", //paylasim
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GonderiKarti(
            aciklama: "Manzaraya Hayran Kaldım.",
            gecensure: "1 Saat Önce",
            ppresim:
                "https://cdn.pixabay.com/photo/2016/03/09/15/10/man-1246508_1280.jpg",
            ad: "Selçuk",
            gonderiResim:
                "https://cdn.pixabay.com/photo/2020/03/24/11/21/winter-4963715_1280.jpg",
          ),
          GonderiKarti(
            aciklama: "Geçen Yaz Çektim",
            gecensure: "3 Saat Önce",
            ppresim:
                "https://cdn.pixabay.com/photo/2019/11/03/20/11/portrait-4599553_1280.jpg",
            ad: "Belma",
            gonderiResim:
                "https://cdn.pixabay.com/photo/2020/11/24/19/34/colosseum-5773684_1280.jpg",
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        backgroundColor: Colors.purple[300],
        child: Icon(Icons.add_a_photo, color: Colors.white,),
      ),
    );
  }

  Padding duyuru(String mesaj, String zaman) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            mesaj,
            style: TextStyle(fontSize: 17),
          ),
          Text(zaman)
        ],
      ),
    );
  }

  Widget profilKardiolustur(
      String kullaniciAdi,
      String resimLinki,
      String isimSoyad,
      String kapakLinki,
      String takipci,
      String takip,
      String paylasim) {
    return Material(
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => ProfilSayfasi(
                        kullaniciAdi: kullaniciAdi,
                        profilResimLinki: resimLinki,
                        kapakResimLinki: kapakLinki,
                        isimSoyad: isimSoyad,
                        takip: takip,
                        takipci: takipci,
                        paylasim: paylasim,
                      )));
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Column(
            children: <Widget>[
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Hero(
                    tag: kullaniciAdi,
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35.0),
                          border: Border.all(width: 2.0, color: Colors.grey),
                          image: DecorationImage(
                            image: NetworkImage(resimLinki),
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(width: 2.0, color: Colors.white)),
                  )
                ],
              ),
              SizedBox(height: 4),
              Text(
                kullaniciAdi,
                style: TextStyle(fontSize: 15, color: Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}
