import 'package:flutter/material.dart';
import 'package:sociaworld/GonderiKarti.dart';

class ProfilSayfasi extends StatelessWidget {
  final isimSoyad;
  final kullaniciAdi;
  final profilResimLinki;
  final kapakResimLinki;
  final takip;
  final takipci;
  final paylasim;

  const ProfilSayfasi(
      {Key key,
      this.isimSoyad,
      this.kullaniciAdi,
      this.profilResimLinki,
      this.kapakResimLinki,
      this.takip,
      this.takipci,
      this.paylasim})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: ListView(
          children: [
            Stack(
              children: [
                Container(
                  height: 230,
                  decoration: BoxDecoration(
                      //color: Colors.yellow,
                      ),
                ),
                Container(
                  height: 180,
                  //color: Colors.green,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: NetworkImage(
                       kapakResimLinki),
                    fit: BoxFit.cover,
                  )),
                ),
                Positioned(
                  left: 20,
                  bottom: 0,
                  child: Hero(
                    tag: kullaniciAdi,
                                      child: Container(
                      //profil foto
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: BorderRadius.circular(60),
                          border: Border.all(
                            width: 2.0,
                            color: Colors.white,
                          ),
                          image: DecorationImage(
                            image: NetworkImage(
                                profilResimLinki),
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                ),
                Positioned(
                  left: 145.0,
                  top: 190.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(isimSoyad,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          )),
                      Text(kullaniciAdi,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                ),
                Positioned(
                  top: 130,
                  right: 15,
                  child: Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(width: 2.0, color: Colors.white),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add_circle,
                          size: 18,
                        ),
                        SizedBox(width: 2),
                        Text(
                          "Takip Et",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    })
              ],
            ),
            Container(
              height: 75.0,
              color: Colors.grey.withOpacity(0.1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  sayac("Takipçi", takipci),
                  sayac("Takip", takip),
                  sayac("Paylaşım", paylasim),
                ],
              ),
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
        ));
  }

  Column sayac(String baslik, String sayi) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          sayi,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 2,
        ),
        Text(
          baslik,
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
